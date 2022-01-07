
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int dell_smbios_wmi_driver ;
 int dmi_walk (int ,int *) ;
 int find_b1 ;
 int wmi_driver_register (int *) ;
 int wmi_supported ;

int init_dell_smbios_wmi(void)
{
 dmi_walk(find_b1, ((void*)0));

 if (!wmi_supported)
  return -ENODEV;

 return wmi_driver_register(&dell_smbios_wmi_driver);
}
