
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int brightness; int bluetooth; int wireless; int mailled; } ;






 int AE_ERROR ;
 int AE_OK ;
 int ec_read (int,int*) ;
 TYPE_1__* quirks ;

__attribute__((used)) static acpi_status AMW0_get_u32(u32 *value, u32 cap)
{
 int err;
 u8 result;

 switch (cap) {
 case 129:
  switch (quirks->mailled) {
  default:
   err = ec_read(0xA, &result);
   if (err)
    return AE_ERROR;
   *value = (result >> 7) & 0x1;
   return AE_OK;
  }
  break;
 case 128:
  switch (quirks->wireless) {
  case 1:
   err = ec_read(0x7B, &result);
   if (err)
    return AE_ERROR;
   *value = result & 0x1;
   return AE_OK;
  case 2:
   err = ec_read(0x71, &result);
   if (err)
    return AE_ERROR;
   *value = result & 0x1;
   return AE_OK;
  case 3:
   err = ec_read(0x78, &result);
   if (err)
    return AE_ERROR;
   *value = result & 0x1;
   return AE_OK;
  default:
   err = ec_read(0xA, &result);
   if (err)
    return AE_ERROR;
   *value = (result >> 2) & 0x1;
   return AE_OK;
  }
  break;
 case 131:
  switch (quirks->bluetooth) {
  default:
   err = ec_read(0xA, &result);
   if (err)
    return AE_ERROR;
   *value = (result >> 4) & 0x1;
   return AE_OK;
  }
  break;
 case 130:
  switch (quirks->brightness) {
  default:
   err = ec_read(0x83, &result);
   if (err)
    return AE_ERROR;
   *value = result;
   return AE_OK;
  }
  break;
 default:
  return AE_ERROR;
 }
 return AE_OK;
}
