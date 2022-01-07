
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TP_HKEY_EV_HOTKEY_BASE ;
 int tpacpi_driver_event (scalar_t__) ;

__attribute__((used)) static void hotkey_driver_event(const unsigned int scancode)
{
 tpacpi_driver_event(TP_HKEY_EV_HOTKEY_BASE + scancode);
}
