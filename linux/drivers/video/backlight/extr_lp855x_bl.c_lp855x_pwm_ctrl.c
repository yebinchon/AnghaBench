
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_device {int dummy; } ;
struct lp855x {struct pwm_device* pwm; int chipname; int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int period_ns; } ;


 scalar_t__ IS_ERR (struct pwm_device*) ;
 struct pwm_device* devm_pwm_get (int ,int ) ;
 int pwm_apply_args (struct pwm_device*) ;
 int pwm_config (struct pwm_device*,unsigned int,unsigned int) ;
 int pwm_disable (struct pwm_device*) ;
 int pwm_enable (struct pwm_device*) ;

__attribute__((used)) static void lp855x_pwm_ctrl(struct lp855x *lp, int br, int max_br)
{
 unsigned int period = lp->pdata->period_ns;
 unsigned int duty = br * period / max_br;
 struct pwm_device *pwm;


 if (!lp->pwm) {
  pwm = devm_pwm_get(lp->dev, lp->chipname);
  if (IS_ERR(pwm))
   return;

  lp->pwm = pwm;





  pwm_apply_args(pwm);
 }

 pwm_config(lp->pwm, duty, period);
 if (duty)
  pwm_enable(lp->pwm);
 else
  pwm_disable(lp->pwm);
}
