
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hotkey_wlsw; } ;


 int EIO ;
 int ENODEV ;
 int TPACPI_RFK_RADIO_OFF ;
 int TPACPI_RFK_RADIO_ON ;
 int acpi_evalf (int ,int*,char*,char*) ;
 scalar_t__ dbg_wlswemul ;
 int hkey_handle ;
 TYPE_1__ tp_features ;
 scalar_t__ tpacpi_wlsw_emulstate ;

__attribute__((used)) static int hotkey_get_wlsw(void)
{
 int status;

 if (!tp_features.hotkey_wlsw)
  return -ENODEV;







 if (!acpi_evalf(hkey_handle, &status, "WLSW", "d"))
  return -EIO;

 return (status) ? TPACPI_RFK_RADIO_ON : TPACPI_RFK_RADIO_OFF;
}
