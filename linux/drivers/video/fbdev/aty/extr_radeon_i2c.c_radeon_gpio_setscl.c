
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeonfb_info {int dummy; } ;
struct radeon_i2c_chan {int ddc_reg; struct radeonfb_info* rinfo; } ;


 int INREG (int ) ;
 int OUTREG (int ,int) ;
 int VGA_DDC_CLK_OUT_EN ;

__attribute__((used)) static void radeon_gpio_setscl(void* data, int state)
{
 struct radeon_i2c_chan *chan = data;
 struct radeonfb_info *rinfo = chan->rinfo;
 u32 val;

 val = INREG(chan->ddc_reg) & ~(VGA_DDC_CLK_OUT_EN);
 if (!state)
  val |= VGA_DDC_CLK_OUT_EN;

 OUTREG(chan->ddc_reg, val);
 (void)INREG(chan->ddc_reg);
}
