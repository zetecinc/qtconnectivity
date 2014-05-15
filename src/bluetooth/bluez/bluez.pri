linux-*: {
    # bluetooth.h is not standards compliant
    contains(QMAKE_CXXFLAGS, -std=c++0x) {
        QMAKE_CXXFLAGS -= -std=c++0x
        QMAKE_CXXFLAGS += -std=gnu++0x
        CONFIG -= c++11
    }
    c++11 {
        CONFIG -= c++11
        QMAKE_CXXFLAGS += -std=gnu++0x
    }
}

HEADERS += bluez/manager_p.h \
           bluez/adapter_p.h \
           bluez/device_p.h \
           bluez/service_p.h \
           bluez/agent_p.h \
           bluez/servicemap_p.h \
           bluez/obex_client_p.h \
           bluez/obex_agent_p.h \
           bluez/obex_transfer_p.h \
           bluez/obex_manager_p.h \
           bluez/bluez5_helper_p.h \
           bluez/objectmanager_p.h \
           bluez/properties_p.h \
           bluez/adapter1_bluez5_p.h \
           bluez/device1_bluez5_p.h \
           bluez/profile1_p.h


SOURCES += bluez/manager.cpp \
           bluez/adapter.cpp \
           bluez/agent.cpp \
           bluez/device.cpp \
           bluez/service.cpp \
           bluez/servicemap.cpp \
           bluez/obex_client.cpp \
           bluez/obex_agent.cpp \
           bluez/obex_transfer.cpp \
           bluez/obex_manager.cpp \
           bluez/objectmanager.cpp \
           bluez/properties.cpp \
           bluez/adapter1_bluez5.cpp \
           bluez/device1_bluez5.cpp \
           bluez/bluez5_helper.cpp \
           bluez/profile1.cpp
