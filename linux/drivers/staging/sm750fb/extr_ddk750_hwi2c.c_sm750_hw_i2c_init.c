
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_MUX ;
 unsigned int GPIO_MUX_30 ;
 unsigned int GPIO_MUX_31 ;
 int I2C_CTRL ;
 unsigned int I2C_CTRL_EN ;
 unsigned int I2C_CTRL_MODE ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int sm750_enable_i2c (int) ;

int sm750_hw_i2c_init(unsigned char bus_speed_mode)
{
 unsigned int value;


 value = peek32(GPIO_MUX);

 value |= (GPIO_MUX_30 | GPIO_MUX_31);
 poke32(GPIO_MUX, value);





 sm750_enable_i2c(1);


 value = peek32(I2C_CTRL) & ~(I2C_CTRL_MODE | I2C_CTRL_EN);
 if (bus_speed_mode)
  value |= I2C_CTRL_MODE;
 value |= I2C_CTRL_EN;
 poke32(I2C_CTRL, value);

 return 0;
}
