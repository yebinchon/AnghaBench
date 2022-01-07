
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct siox_device {int statustype; } ;


 int SIOX_STATUS_TYPE ;

__attribute__((used)) static bool siox_device_type_error(struct siox_device *sdevice, u8 status_clean)
{
 u8 statustype = (status_clean & SIOX_STATUS_TYPE) >> 4;






 if (sdevice->statustype) {
  if (statustype != sdevice->statustype)
   return 1;
 } else {
  switch (statustype) {
  case 0:
  case 0xf:
   return 1;
  }
 }

 return 0;
}
