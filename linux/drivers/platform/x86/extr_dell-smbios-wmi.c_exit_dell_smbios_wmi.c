
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dell_smbios_wmi_driver ;
 int wmi_driver_unregister (int *) ;

void exit_dell_smbios_wmi(void)
{
 wmi_driver_unregister(&dell_smbios_wmi_driver);
}
