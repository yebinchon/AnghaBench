
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int npwm; struct pwm_device* pwms; } ;
struct pwm_sifive_ddata {int notifier; int clk; TYPE_2__ chip; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct pwm_device {TYPE_1__ state; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 struct pwm_sifive_ddata* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (TYPE_2__*) ;

__attribute__((used)) static int pwm_sifive_remove(struct platform_device *dev)
{
 struct pwm_sifive_ddata *ddata = platform_get_drvdata(dev);
 bool is_enabled = 0;
 struct pwm_device *pwm;
 int ret, ch;

 for (ch = 0; ch < ddata->chip.npwm; ch++) {
  pwm = &ddata->chip.pwms[ch];
  if (pwm->state.enabled) {
   is_enabled = 1;
   break;
  }
 }
 if (is_enabled)
  clk_disable(ddata->clk);

 clk_disable_unprepare(ddata->clk);
 ret = pwmchip_remove(&ddata->chip);
 clk_notifier_unregister(ddata->clk, &ddata->notifier);

 return ret;
}
