
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* lvds_setting_info; TYPE_2__* lvds_setting_info2; } ;
struct TYPE_5__ {int lcd_mode; int display_method; } ;
struct TYPE_4__ {int lcd_mode; int display_method; } ;


 int clock ;
 int init_gfx_chip_info (int) ;
 int init_lvds_chip_info () ;
 int init_tmds_chip_info () ;
 int via_clock_init (int *,int) ;
 int viafb_lcd_dsp_method ;
 int viafb_lcd_mode ;
 int viafb_set_iga_path () ;
 TYPE_3__* viaparinfo ;

void viafb_init_chip_info(int chip_type)
{
 via_clock_init(&clock, chip_type);
 init_gfx_chip_info(chip_type);
 init_tmds_chip_info();
 init_lvds_chip_info();


 viafb_set_iga_path();

 viaparinfo->lvds_setting_info->display_method = viafb_lcd_dsp_method;
 viaparinfo->lvds_setting_info->lcd_mode = viafb_lcd_mode;
 viaparinfo->lvds_setting_info2->display_method =
  viaparinfo->lvds_setting_info->display_method;
 viaparinfo->lvds_setting_info2->lcd_mode =
  viaparinfo->lvds_setting_info->lcd_mode;
}
