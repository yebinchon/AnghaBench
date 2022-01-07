
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct btc_coexist {int dummy; } ;



__attribute__((used)) static u32 btc8192e2ant_decide_ra_mask(struct btc_coexist *btcoexist,
           u8 ss_type, u32 ra_mask_type)
{
 u32 dis_ra_mask = 0x0;

 switch (ra_mask_type) {
 case 0:
  if (ss_type == 2)
   dis_ra_mask = 0x0;
  else
   dis_ra_mask = 0xfff00000;
  break;
 case 1:
  if (ss_type == 2)
   dis_ra_mask = 0x00000003;
  else
   dis_ra_mask = 0xfff00003;
  break;
 case 2:
  if (ss_type == 2)
   dis_ra_mask = 0x0001f1f7;
  else
   dis_ra_mask = 0xfff1f1f7;
  break;
 default:
  break;
 }

 return dis_ra_mask;
}
