
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct samsung_pwm_variant {int bits; int div_base; } ;
struct TYPE_2__ {int dev; } ;
struct samsung_pwm_chip {TYPE_1__ chip; struct clk* tclk1; struct clk* tclk0; struct samsung_pwm_variant variant; } ;
struct clk {int dummy; } ;


 int BIT (int) ;
 int IS_ERR (struct clk*) ;
 unsigned long clk_get_rate (struct clk*) ;
 int dev_dbg (int ,char*,unsigned long) ;
 int dev_warn (int ,char*,unsigned int) ;
 unsigned long pwm_samsung_get_tin_rate (struct samsung_pwm_chip*,unsigned int) ;
 int pwm_samsung_is_tdiv (struct samsung_pwm_chip*,unsigned int) ;
 int pwm_samsung_set_divisor (struct samsung_pwm_chip*,unsigned int,int ) ;

__attribute__((used)) static unsigned long pwm_samsung_calc_tin(struct samsung_pwm_chip *chip,
       unsigned int chan, unsigned long freq)
{
 struct samsung_pwm_variant *variant = &chip->variant;
 unsigned long rate;
 struct clk *clk;
 u8 div;

 if (!pwm_samsung_is_tdiv(chip, chan)) {
  clk = (chan < 2) ? chip->tclk0 : chip->tclk1;
  if (!IS_ERR(clk)) {
   rate = clk_get_rate(clk);
   if (rate)
    return rate;
  }

  dev_warn(chip->chip.dev,
   "tclk of PWM %d is inoperational, using tdiv\n", chan);
 }

 rate = pwm_samsung_get_tin_rate(chip, chan);
 dev_dbg(chip->chip.dev, "tin parent at %lu\n", rate);






 if (variant->bits < 32) {

  for (div = variant->div_base; div < 4; ++div)
   if ((rate >> (variant->bits + div)) < freq)
    break;
 } else {




  div = variant->div_base;
 }

 pwm_samsung_set_divisor(chip, chan, BIT(div));

 return rate >> div;
}
