
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {scalar_t__ LCDDithering; scalar_t__ device_lcd_dualedge; } ;
struct lvds_chip_information {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * common_init_data ;
 int dithering_disable_data ;
 int dithering_enable_data ;
 int dual_channel_enable_data ;
 int single_channel_enable_data ;
 int viafb_gpio_i2c_write_mask_lvds (struct lvds_setting_information*,struct lvds_chip_information*,int ) ;

void viafb_init_lvds_vt1636(struct lvds_setting_information
 *plvds_setting_info, struct lvds_chip_information *plvds_chip_info)
{
 int reg_num, i;


 reg_num = ARRAY_SIZE(common_init_data);
 for (i = 0; i < reg_num; i++)
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
   plvds_chip_info, common_init_data[i]);


 if (plvds_setting_info->device_lcd_dualedge)
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
   plvds_chip_info, dual_channel_enable_data);
 else
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
   plvds_chip_info, single_channel_enable_data);

 if (plvds_setting_info->LCDDithering)
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
   plvds_chip_info, dithering_enable_data);
 else
  viafb_gpio_i2c_write_mask_lvds(plvds_setting_info,
   plvds_chip_info, dithering_disable_data);
}
