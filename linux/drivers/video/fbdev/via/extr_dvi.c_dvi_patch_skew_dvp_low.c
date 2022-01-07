
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT1 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT3 ;
 int CR99 ;



 int VIACR ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static void dvi_patch_skew_dvp_low(void)
{
 switch (viaparinfo->chip_info->gfx_chip_name) {
 case 130:
  {
   viafb_write_reg_mask(CR99, VIACR, 0x03, BIT0 + BIT1);
   break;
  }

 case 128:
  {
   viafb_write_reg_mask(CR99, VIACR, 0x08,
           BIT0 + BIT1 + BIT2 + BIT3);
   break;
  }

 case 129:
  {
   viafb_write_reg_mask(CR99, VIACR, 0x0F,
           BIT0 + BIT1 + BIT2 + BIT3);
   break;
  }

 default:
  {
   break;
  }
 }
}
