
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int SM718 ;
 int SM750 ;
 int SM750LE ;
 scalar_t__ SM750LE_REVISION_ID ;
 int SM_UNKNOWN ;
 int chip ;
 int pr_info (char*) ;

void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
{
 if (dev_id == 0x718) {
  chip = SM718;
 } else if (dev_id == 0x750) {
  chip = SM750;

  if (rev_id == SM750LE_REVISION_ID) {
   chip = SM750LE;
   pr_info("found sm750le\n");
  }
 } else {
  chip = SM_UNKNOWN;
 }
}
