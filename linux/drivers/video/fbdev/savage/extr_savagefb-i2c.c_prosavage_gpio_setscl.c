
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct savagefb_i2c_chan {int par; int reg; } ;


 int PROSAVAGE_I2C_ENAB ;
 int PROSAVAGE_I2C_SCL_OUT ;
 int VGArCR (int ,int ) ;
 int VGAwCR (int ,int ,int ) ;

__attribute__((used)) static void prosavage_gpio_setscl(void* data, int val)
{
 struct savagefb_i2c_chan *chan = data;
 u32 r;

 r = VGArCR(chan->reg, chan->par);
 r |= PROSAVAGE_I2C_ENAB;
 if (val) {
  r |= PROSAVAGE_I2C_SCL_OUT;
 } else {
  r &= ~PROSAVAGE_I2C_SCL_OUT;
 }

 VGAwCR(chan->reg, r, chan->par);
}
