
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* lvds_setting_info; TYPE_1__* lvds_setting_info2; } ;
struct TYPE_5__ {scalar_t__ device_lcd_dualedge; } ;
struct TYPE_4__ {scalar_t__ device_lcd_dualedge; } ;


 scalar_t__ BIT4 ;
 scalar_t__ BIT5 ;
 int CRD2 ;
 int VIACR ;
 scalar_t__ viafb_DVI_ON ;
 scalar_t__ viafb_LCD2_ON ;
 scalar_t__ viafb_LCD_ON ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;
 TYPE_3__* viaparinfo ;

__attribute__((used)) static void set_display_channel(void)
{


 if (viafb_LCD2_ON &&
  viaparinfo->lvds_setting_info2->device_lcd_dualedge) {


  viafb_write_reg_mask(CRD2, VIACR, 0x20, BIT4 + BIT5);
 } else if (viafb_LCD_ON && viafb_DVI_ON) {


  viafb_write_reg_mask(CRD2, VIACR, 0x10, BIT4 + BIT5);
 } else if (viafb_DVI_ON) {

  viafb_write_reg_mask(CRD2, VIACR, 0x30, BIT4 + BIT5);
 } else if (viafb_LCD_ON) {
  if (viaparinfo->lvds_setting_info->device_lcd_dualedge) {


   viafb_write_reg_mask(CRD2, VIACR, 0x20, BIT4 + BIT5);
  } else {

   viafb_write_reg_mask(CRD2, VIACR, 0x00, BIT4 + BIT5);
  }
 }
}
