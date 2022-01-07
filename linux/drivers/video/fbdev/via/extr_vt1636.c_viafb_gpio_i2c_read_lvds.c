
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int lvds_chip_slave_addr; int i2c_port; } ;


 int viafb_i2c_readbyte (int ,int ,int ,int *) ;

u8 viafb_gpio_i2c_read_lvds(struct lvds_setting_information
 *plvds_setting_info, struct lvds_chip_information *plvds_chip_info,
 u8 index)
{
 u8 data;

 viafb_i2c_readbyte(plvds_chip_info->i2c_port,
      plvds_chip_info->lvds_chip_slave_addr, index, &data);
 return data;
}
