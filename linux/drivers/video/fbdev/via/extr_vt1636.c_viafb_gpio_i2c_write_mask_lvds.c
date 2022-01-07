
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {int lvds_chip_slave_addr; int i2c_port; } ;
struct IODATA {int Index; int Mask; int Data; } ;


 int viafb_gpio_i2c_read_lvds (struct lvds_setting_information*,struct lvds_chip_information*,int) ;
 int viafb_i2c_writebyte (int ,int ,int,int) ;

void viafb_gpio_i2c_write_mask_lvds(struct lvds_setting_information
         *plvds_setting_info, struct lvds_chip_information
         *plvds_chip_info, struct IODATA io_data)
{
 int index, data;

 index = io_data.Index;
 data = viafb_gpio_i2c_read_lvds(plvds_setting_info, plvds_chip_info,
  index);
 data = (data & (~io_data.Mask)) | io_data.Data;

 viafb_i2c_writebyte(plvds_chip_info->i2c_port,
       plvds_chip_info->lvds_chip_slave_addr, index, data);
}
