
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct samsung_pwm_chip {TYPE_1__ chip; scalar_t__ base; } ;
struct samsung_pwm_channel {int tin_ns; int period_ns; int duty_ns; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int ERANGE ;
 int NSEC_PER_SEC ;
 scalar_t__ REG_TCMPB (int ) ;
 scalar_t__ REG_TCNTB (int ) ;
 int dev_dbg (int ,char*,...) ;
 struct samsung_pwm_channel* pwm_get_chip_data (struct pwm_device*) ;
 unsigned long pwm_samsung_calc_tin (struct samsung_pwm_chip*,int ,int) ;
 int pwm_samsung_manual_update (struct samsung_pwm_chip*,struct pwm_device*) ;
 int readl (scalar_t__) ;
 struct samsung_pwm_chip* to_samsung_pwm_chip (struct pwm_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int __pwm_samsung_config(struct pwm_chip *chip, struct pwm_device *pwm,
    int duty_ns, int period_ns, bool force_period)
{
 struct samsung_pwm_chip *our_chip = to_samsung_pwm_chip(chip);
 struct samsung_pwm_channel *chan = pwm_get_chip_data(pwm);
 u32 tin_ns = chan->tin_ns, tcnt, tcmp, oldtcmp;






 if (period_ns > NSEC_PER_SEC)
  return -ERANGE;

 tcnt = readl(our_chip->base + REG_TCNTB(pwm->hwpwm));
 oldtcmp = readl(our_chip->base + REG_TCMPB(pwm->hwpwm));


 ++tcnt;


 if (chan->period_ns != period_ns || force_period) {
  unsigned long tin_rate;
  u32 period;

  period = NSEC_PER_SEC / period_ns;

  dev_dbg(our_chip->chip.dev, "duty_ns=%d, period_ns=%d (%u)\n",
      duty_ns, period_ns, period);

  tin_rate = pwm_samsung_calc_tin(our_chip, pwm->hwpwm, period);

  dev_dbg(our_chip->chip.dev, "tin_rate=%lu\n", tin_rate);

  tin_ns = NSEC_PER_SEC / tin_rate;
  tcnt = period_ns / tin_ns;
 }


 if (tcnt <= 1)
  return -ERANGE;


 tcmp = duty_ns / tin_ns;


 if (!tcmp)
  ++tcmp;

 tcmp = tcnt - tcmp;


 --tcnt;

 --tcmp;

 dev_dbg(our_chip->chip.dev,
    "tin_ns=%u, tcmp=%u/%u\n", tin_ns, tcmp, tcnt);


 writel(tcnt, our_chip->base + REG_TCNTB(pwm->hwpwm));
 writel(tcmp, our_chip->base + REG_TCMPB(pwm->hwpwm));






 if (oldtcmp == (u32) -1) {
  dev_dbg(our_chip->chip.dev, "Forcing manual update");
  pwm_samsung_manual_update(our_chip, pwm);
 }

 chan->period_ns = period_ns;
 chan->tin_ns = tin_ns;
 chan->duty_ns = duty_ns;

 return 0;
}
