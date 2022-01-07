
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pwm_sifive_ddata {int clk; TYPE_1__ chip; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 struct pwm_sifive_ddata* pwm_sifive_chip_to_ddata (struct pwm_chip*) ;

__attribute__((used)) static int pwm_sifive_enable(struct pwm_chip *chip, bool enable)
{
 struct pwm_sifive_ddata *ddata = pwm_sifive_chip_to_ddata(chip);
 int ret;

 if (enable) {
  ret = clk_enable(ddata->clk);
  if (ret) {
   dev_err(ddata->chip.dev, "Enable clk failed\n");
   return ret;
  }
 }

 if (!enable)
  clk_disable(ddata->clk);

 return 0;
}
