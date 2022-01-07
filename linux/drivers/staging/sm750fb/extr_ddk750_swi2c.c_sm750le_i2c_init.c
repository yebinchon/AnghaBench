
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GPIO_DATA_DIRECTION_SM750LE ;
 void* GPIO_DATA_SM750LE ;
 unsigned char sw_i2c_clk_gpio ;
 void* sw_i2c_clk_gpio_data_dir_reg ;
 void* sw_i2c_clk_gpio_data_reg ;
 unsigned char sw_i2c_data_gpio ;
 void* sw_i2c_data_gpio_data_dir_reg ;
 void* sw_i2c_data_gpio_data_reg ;
 int sw_i2c_stop () ;

__attribute__((used)) static long sm750le_i2c_init(unsigned char clk_gpio, unsigned char data_gpio)
{
 int i;


 sw_i2c_clk_gpio_data_reg = GPIO_DATA_SM750LE;
 sw_i2c_clk_gpio_data_dir_reg = GPIO_DATA_DIRECTION_SM750LE;


 sw_i2c_clk_gpio = clk_gpio;


 sw_i2c_data_gpio_data_reg = GPIO_DATA_SM750LE;
 sw_i2c_data_gpio_data_dir_reg = GPIO_DATA_DIRECTION_SM750LE;


 sw_i2c_data_gpio = data_gpio;




 for (i = 0; i < 9; i++)
  sw_i2c_stop();

 return 0;
}
