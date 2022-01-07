
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DEVID_9005_TYPE (int) ;
 int DEVID_9005_TYPE_HBA ;
 int SUBID_9005_TYPE (int) ;

 scalar_t__ SUBID_9005_TYPE_KNOWN (int) ;




__attribute__((used)) static int
ahc_9005_subdevinfo_valid(uint16_t device, uint16_t vendor,
     uint16_t subdevice, uint16_t subvendor)
{
 int result;


 result = 0;
 if (vendor == 0x9005
  && subvendor == 0x9005
         && subdevice != device
         && SUBID_9005_TYPE_KNOWN(subdevice) != 0) {

  switch (SUBID_9005_TYPE(subdevice)) {
  case 129:
   break;
  case 131:
  case 130:




   if (DEVID_9005_TYPE(device) == DEVID_9005_TYPE_HBA)
    result = 1;
   break;
  case 128:
   break;
  default:
   break;
  }
 }
 return (result);
}
