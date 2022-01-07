
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int dummy; } ;


 int vdd_on_data ;
 int viafb_gpio_i2c_write_mask_lvds (struct lvds_setting_information*,struct lvds_chip_information*,int ) ;

void viafb_enable_lvds_vt1636(struct lvds_setting_information
   *plvds_setting_info,
   struct lvds_chip_information *plvds_chip_info)
{
 viafb_gpio_i2c_write_mask_lvds(plvds_setting_info, plvds_chip_info,
  vdd_on_data);
}
