
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELL_WMI_DESCRIPTOR_GUID ;
 int ENODEV ;
 int descriptor_valid ;
 int wmi_has_guid (int ) ;

int dell_wmi_get_descriptor_valid(void)
{
 if (!wmi_has_guid(DELL_WMI_DESCRIPTOR_GUID))
  return -ENODEV;

 return descriptor_valid;
}
