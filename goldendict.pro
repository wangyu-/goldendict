# #####################################################################
# Automatically generated by qmake (2.01a) ?? ????. 2 18:38:07 2008
# #####################################################################
TEMPLATE = app
TARGET = goldendict
VERSION = 1.0.1+git

# Generate version file. We do this here and in a build rule described later.
# The build rule is required since qmake isn't run each time the project is
# rebuilt; and doing it here is required too since any other way the RCC
# compiler would complain if version.txt wouldn't exist (fresh checkouts).

system(git describe --tags --always --dirty > version.txt): hasGit=1

isEmpty( hasGit ) {
  message(Failed to precisely describe the version via Git -- using the default version string)
  system(echo $$VERSION > version.txt)
}

# DEPENDPATH += . generators
INCLUDEPATH += .
QT += webkit
QT += xml
QT += network
QT += phonon
CONFIG += exceptions \
    rtti \
    stl
OBJECTS_DIR = build
UI_DIR = build
MOC_DIR = build
RCC_DIR = build
LIBS += \
        -lz \

win32 { 
    LIBS += -liconv \
        -lwsock32 \
        -lwinmm \
        -lpsapi
    LIBS += -lvorbisfile \
        -lvorbis \
        -logg \
        -lhunspell-1.2
    RC_FILE = goldendict.rc
    INCLUDEPATH += winlibs/include
    LIBS += -Lwinlibs/lib
}
unix {

  # This is to keep symbols for backtraces
  QMAKE_CXXFLAGS += -rdynamic
  QMAKE_LFLAGS += -rdynamic

    CONFIG += link_pkgconfig
    PKGCONFIG += vorbisfile \
    	vorbis \
	ogg \
	hunspell
    LIBS += -lX11 \
        -lXtst
    PREFIX = $$(PREFIX)
    isEmpty( PREFIX ):PREFIX = /usr/local
    DEFINES += PROGRAM_DATA_DIR=\\\"$$PREFIX/share/apps/goldendict/\\\"
    target.path = $$PREFIX/bin/
    locale.path = $$PREFIX/share/apps/goldendict/locale/
    locale.files = locale/*.qm
    INSTALLS += target \
        locale
    icons.path = $$PREFIX/share/pixmaps
    icons.files = redist/icons/*.*
    INSTALLS += icons
    icons2.path = $$PREFIX/share/app-install/icons
    icons2.files = redist/icons/*.*
    INSTALLS += icons2
    desktops.path = $$PREFIX/share/applications
    desktops.files = redist/*.desktop
    INSTALLS += desktops
    desktops2.path = $$PREFIX/share/app-install/desktop
    desktops2.files = redist/*.desktop
    INSTALLS += desktops2
}
DEFINES += PROGRAM_VERSION=\\\"$$VERSION\\\"

# Input
HEADERS += folding.hh \
    inc_case_folding.hh \
    inc_diacritic_folding.hh \
    mainwindow.hh \
    sptr.hh \
    dictionary.hh \
    ex.hh \
    config.hh \
    sources.hh \
    utf8.hh \
    file.hh \
    bgl_babylon.hh \
    bgl.hh \
    initializing.hh \
    article_netmgr.hh \
    dictzip.h \
    btreeidx.hh \
    stardict.hh \
    chunkedstorage.hh \
    xdxf2html.hh \
    iconv.hh \
    lsa.hh \
    htmlescape.hh \
    dsl.hh \
    dsl_details.hh \
    filetype.hh \
    fsencoding.hh \
    groups.hh \
    groups_widgets.hh \
    instances.hh \
    article_maker.hh \
    scanpopup.hh \
    articleview.hh \
    externalviewer.hh \
    wordfinder.hh \
    groupcombobox.hh \
    keyboardstate.hh \
    mouseover.hh \
    preferences.hh \
    mutex.hh \
    mediawiki.hh \
    sounddir.hh \
    hunspell.hh \
    dictdfiles.hh \
    audiolink.hh \
    wstring.hh \
    wstring_qt.hh \
    processwrapper.hh \
    hotkeywrapper.hh \
    searchpanewidget.hh \
    hotkeyedit.hh \
    langcoder.hh \
    editdictionaries.hh \
    loaddictionaries.hh \
    transliteration.hh \
    romaji.hh \
    russiantranslit.hh \
    german.hh \
    website.hh \
    orderandprops.hh \
    language.hh \
    dictionarybar.hh \
    broken_xrecord.hh \
    history.hh \
    atomic_rename.hh \
    articlewebview.hh \
    zipfile.hh \
    indexedzip.hh \
    termination.hh \
    greektranslit.hh \
    webmultimediadownload.hh \
    forvo.hh \
    country.hh \
    about.hh \
    programs.hh
FORMS += groups.ui \
    dictgroupwidget.ui \
    mainwindow.ui \
    sources.ui \
    initializing.ui \
    groupselectorwidget.ui \
    scanpopup.ui \
    articleview.ui \
    preferences.ui \
    about.ui \
    editdictionaries.ui \
    orderandprops.ui
SOURCES += folding.cc \
    main.cc \
    dictionary.cc \
    config.cc \
    sources.cc \
    mainwindow.cc \
    utf8.cc \
    file.cc \
    bgl_babylon.cc \
    bgl.cc \
    initializing.cc \
    article_netmgr.cc \
    dictzip.c \
    btreeidx.cc \
    stardict.cc \
    chunkedstorage.cc \
    xdxf2html.cc \
    iconv.cc \
    lsa.cc \
    htmlescape.cc \
    dsl.cc \
    dsl_details.cc \
    filetype.cc \
    fsencoding.cc \
    groups.cc \
    groups_widgets.cc \
    instances.cc \
    article_maker.cc \
    scanpopup.cc \
    articleview.cc \
    externalviewer.cc \
    wordfinder.cc \
    groupcombobox.cc \
    keyboardstate.cc \
    mouseover.cc \
    preferences.cc \
    mutex.cc \
    mediawiki.cc \
    sounddir.cc \
    hunspell.cc \
    dictdfiles.cc \
    audiolink.cc \
    wstring.cc \
    wstring_qt.cc \
    processwrapper.cc \
    hotkeywrapper.cc \
    hotkeyedit.cc \
    langcoder.cc \
    editdictionaries.cc \
    loaddictionaries.cc \
    transliteration.cc \
    romaji.cc \
    russiantranslit.cc \
    german.cc \
    website.cc \
    orderandprops.cc \
    language.cc \
    dictionarybar.cc \
    broken_xrecord.cc \
    history.cc \
    atomic_rename.cc \
    articlewebview.cc \
    zipfile.cc \
    indexedzip.cc \
    termination.cc \
    greektranslit.cc \
    webmultimediadownload.cc \
    forvo.cc \
    country.cc \
    about.cc \
    programs.cc
win32 { 
    SOURCES += mouseover_win32/ThTypes.c
    HEADERS += mouseover_win32/ThTypes.h
}
RESOURCES += resources.qrc \
    flags.qrc
TRANSLATIONS += locale/ru_RU.ts \
    locale/zh_CN.ts \
    locale/cs_CZ.ts \
    locale/de_DE.ts \
    locale/el_GR.ts \
    locale/bg_BG.ts \
    locale/ar_SA.ts \
    locale/lt_LT.ts \
    locale/uk_UA.ts \
    locale/vi_VN.ts \
    locale/it_IT.ts \
    locale/pl_PL.ts \
    locale/ja_JP.ts \
    locale/zh_TW.ts \
    locale/sq_AL.ts \
    locale/pt_BR.ts \
    locale/es_AR.ts

# Build version file
!isEmpty( hasGit ) {
  QMAKE_EXTRA_TARGETS += revtarget
  PRE_TARGETDEPS      += version.txt
  revtarget.target     = version.txt
  revtarget.commands   = git describe --tags --always --dirty > $$revtarget.target
  revtarget.depends = $$SOURCES $$HEADERS $$FORMS
}

# This makes qmake generate translations
win32:# Windows doesn't seem to have *-qt4 symlinks
isEmpty(QMAKE_LRELEASE):QMAKE_LRELEASE = $$[QT_INSTALL_BINS]/lrelease
isEmpty(QMAKE_LRELEASE):QMAKE_LRELEASE = $$[QT_INSTALL_BINS]/lrelease-qt4
updateqm.input = TRANSLATIONS
updateqm.output = ${QMAKE_FILE_PATH}/${QMAKE_FILE_BASE}.qm
updateqm.commands = $$QMAKE_LRELEASE \
    ${QMAKE_FILE_IN} \
    -qm \
    ${QMAKE_FILE_PATH}/${QMAKE_FILE_BASE}.qm
updateqm.CONFIG += no_link
QMAKE_EXTRA_COMPILERS += updateqm
TS_OUT = $$TRANSLATIONS
TS_OUT ~= s/.ts/.qm/g
PRE_TARGETDEPS += $$TS_OUT

include( qtsingleapplication/src/qtsingleapplication.pri )
