
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ lvds_chip_name; int output_interface; } ;
struct TYPE_9__ {int iga_path; } ;
struct TYPE_8__ {TYPE_1__* chip_info; TYPE_3__* lvds_setting_info; TYPE_3__* lvds_setting_info2; } ;
struct TYPE_7__ {scalar_t__ gfx_chip_name; TYPE_4__ lvds_chip_info; TYPE_4__ lvds_chip_info2; } ;


 int BIT3 ;
 int CR6A ;
 int CR6B ;
 int CR91 ;
 scalar_t__ INTEGRATED_LVDS ;
 int SR1E ;
 int SR3D ;
 scalar_t__ UNICHROME_CLE266 ;
 scalar_t__ UNICHROME_CX700 ;
 int VIACR ;
 int VIASR ;
 scalar_t__ VT1636_LVDS ;
 int integrated_lvds_enable (TYPE_3__*,TYPE_4__*) ;
 int lcd_powersequence_on () ;
 int set_lcd_output_path (int ,int ) ;
 scalar_t__ viafb_LCD2_ON ;
 int viafb_enable_lvds_vt1636 (TYPE_3__*,TYPE_4__*) ;
 int viafb_write_reg_mask (int ,int ,int,int) ;
 TYPE_2__* viaparinfo ;

void viafb_lcd_enable(void)
{
 viafb_write_reg_mask(CR6B, VIACR, 0x00, BIT3);
 viafb_write_reg_mask(CR6A, VIACR, 0x08, BIT3);
 set_lcd_output_path(viaparinfo->lvds_setting_info->iga_path,
  viaparinfo->chip_info->lvds_chip_info.output_interface);
 if (viafb_LCD2_ON)
  set_lcd_output_path(viaparinfo->lvds_setting_info2->iga_path,
   viaparinfo->chip_info->
   lvds_chip_info2.output_interface);

 if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {

  viafb_write_reg_mask(SR1E, VIASR, 0x30, 0x30);
  lcd_powersequence_on();
 } else if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700) {
  if (viafb_LCD2_ON && (INTEGRATED_LVDS ==
   viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name))
   integrated_lvds_enable(viaparinfo->lvds_setting_info2, &viaparinfo->chip_info->lvds_chip_info2);

  if (INTEGRATED_LVDS ==
   viaparinfo->chip_info->lvds_chip_info.lvds_chip_name)
   integrated_lvds_enable(viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info);
  if (VT1636_LVDS == viaparinfo->chip_info->
   lvds_chip_info.lvds_chip_name)
   viafb_enable_lvds_vt1636(viaparinfo->
   lvds_setting_info, &viaparinfo->chip_info->
   lvds_chip_info);
 } else if (VT1636_LVDS ==
 viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
  viafb_enable_lvds_vt1636(viaparinfo->lvds_setting_info,
       &viaparinfo->chip_info->lvds_chip_info);
 } else {

  viafb_write_reg_mask(SR3D, VIASR, 0x20, 0x20);

  viafb_write_reg_mask(CR91, VIACR, 0x00, 0x80);

  viafb_write_reg_mask(CR6A, VIACR, 0x48, 0x48);
 }
}
