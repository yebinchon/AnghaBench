
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int acpi_status ;





 int ACER_WMID3_GDS_BLUETOOTH ;
 int ACER_WMID3_GDS_THREEG ;
 int ACER_WMID3_GDS_WIRELESS ;
 int AE_ERROR ;
 int wmid3_get_device_status (int*,int ) ;

__attribute__((used)) static acpi_status wmid_v2_get_u32(u32 *value, u32 cap)
{
 u16 device;

 switch (cap) {
 case 128:
  device = ACER_WMID3_GDS_WIRELESS;
  break;
 case 130:
  device = ACER_WMID3_GDS_BLUETOOTH;
  break;
 case 129:
  device = ACER_WMID3_GDS_THREEG;
  break;
 default:
  return AE_ERROR;
 }
 return wmid3_get_device_status(value, device);
}
