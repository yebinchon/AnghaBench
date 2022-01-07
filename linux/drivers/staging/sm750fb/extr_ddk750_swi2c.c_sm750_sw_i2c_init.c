
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GPIO_DATA ;
 void* GPIO_DATA_DIRECTION ;
 int GPIO_MUX ;
 scalar_t__ SM750LE ;
 int peek32 (int ) ;
 int poke32 (int ,int) ;
 int sm750_enable_gpio (int) ;
 scalar_t__ sm750_get_chip_type () ;
 long sm750le_i2c_init (unsigned char,unsigned char) ;
 int sw_i2c_clk_gpio ;
 void* sw_i2c_clk_gpio_data_dir_reg ;
 void* sw_i2c_clk_gpio_data_reg ;
 int sw_i2c_clk_gpio_mux_reg ;
 int sw_i2c_data_gpio ;
 void* sw_i2c_data_gpio_data_dir_reg ;
 void* sw_i2c_data_gpio_data_reg ;
 int sw_i2c_data_gpio_mux_reg ;
 int sw_i2c_stop () ;

long sm750_sw_i2c_init(unsigned char clk_gpio, unsigned char data_gpio)
{
 int i;





 if ((clk_gpio > 31) || (data_gpio > 31))
  return -1;

 if (sm750_get_chip_type() == SM750LE)
  return sm750le_i2c_init(clk_gpio, data_gpio);


 sw_i2c_clk_gpio_mux_reg = GPIO_MUX;
 sw_i2c_clk_gpio_data_reg = GPIO_DATA;
 sw_i2c_clk_gpio_data_dir_reg = GPIO_DATA_DIRECTION;


 sw_i2c_clk_gpio = clk_gpio;


 sw_i2c_data_gpio_mux_reg = GPIO_MUX;
 sw_i2c_data_gpio_data_reg = GPIO_DATA;
 sw_i2c_data_gpio_data_dir_reg = GPIO_DATA_DIRECTION;


 sw_i2c_data_gpio = data_gpio;


 poke32(sw_i2c_clk_gpio_mux_reg,
        peek32(sw_i2c_clk_gpio_mux_reg) & ~(1 << sw_i2c_clk_gpio));
 poke32(sw_i2c_data_gpio_mux_reg,
        peek32(sw_i2c_data_gpio_mux_reg) & ~(1 << sw_i2c_data_gpio));


 sm750_enable_gpio(1);


 for (i = 0; i < 9; i++)
  sw_i2c_stop();

 return 0;
}
