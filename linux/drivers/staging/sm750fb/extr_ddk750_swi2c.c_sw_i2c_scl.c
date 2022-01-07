
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long peek32 (int ) ;
 int poke32 (int ,unsigned long) ;
 int sw_i2c_clk_gpio ;
 int sw_i2c_clk_gpio_data_dir_reg ;
 int sw_i2c_clk_gpio_data_reg ;

__attribute__((used)) static void sw_i2c_scl(unsigned char value)
{
 unsigned long gpio_data;
 unsigned long gpio_dir;

 gpio_dir = peek32(sw_i2c_clk_gpio_data_dir_reg);
 if (value) {




  gpio_dir &= ~(1 << sw_i2c_clk_gpio);
  poke32(sw_i2c_clk_gpio_data_dir_reg, gpio_dir);
 } else {

  gpio_data = peek32(sw_i2c_clk_gpio_data_reg);
  gpio_data &= ~(1 << sw_i2c_clk_gpio);
  poke32(sw_i2c_clk_gpio_data_reg, gpio_data);


  gpio_dir |= (1 << sw_i2c_clk_gpio);
  poke32(sw_i2c_clk_gpio_data_dir_reg, gpio_dir);
 }
}
