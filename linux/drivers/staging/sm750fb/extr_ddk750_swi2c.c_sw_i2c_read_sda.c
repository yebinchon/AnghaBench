
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long peek32 (int ) ;
 int poke32 (int ,unsigned long) ;
 int sw_i2c_data_gpio ;
 int sw_i2c_data_gpio_data_dir_reg ;
 int sw_i2c_data_gpio_data_reg ;

__attribute__((used)) static unsigned char sw_i2c_read_sda(void)
{
 unsigned long gpio_dir;
 unsigned long gpio_data;
 unsigned long dir_mask = 1 << sw_i2c_data_gpio;


 gpio_dir = peek32(sw_i2c_data_gpio_data_dir_reg);
 if ((gpio_dir & dir_mask) != ~dir_mask) {
  gpio_dir &= ~(1 << sw_i2c_data_gpio);
  poke32(sw_i2c_data_gpio_data_dir_reg, gpio_dir);
 }


 gpio_data = peek32(sw_i2c_data_gpio_data_reg);
 if (gpio_data & (1 << sw_i2c_data_gpio))
  return 1;
 else
  return 0;
}
