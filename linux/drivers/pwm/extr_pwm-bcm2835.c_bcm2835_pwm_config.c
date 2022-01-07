
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct bcm2835_pwm {scalar_t__ base; int dev; int clk; } ;


 unsigned long DIV_ROUND_CLOSEST (int,unsigned long) ;
 scalar_t__ DUTY (int ) ;
 int EINVAL ;
 int NSEC_PER_SEC ;
 scalar_t__ PERIOD (int ) ;
 unsigned long PERIOD_MIN ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 struct bcm2835_pwm* to_bcm2835_pwm (struct pwm_chip*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 struct bcm2835_pwm *pc = to_bcm2835_pwm(chip);
 unsigned long rate = clk_get_rate(pc->clk);
 unsigned long scaler;
 u32 period;

 if (!rate) {
  dev_err(pc->dev, "failed to get clock rate\n");
  return -EINVAL;
 }

 scaler = DIV_ROUND_CLOSEST(NSEC_PER_SEC, rate);
 period = DIV_ROUND_CLOSEST(period_ns, scaler);

 if (period < PERIOD_MIN)
  return -EINVAL;

 writel(DIV_ROUND_CLOSEST(duty_ns, scaler),
        pc->base + DUTY(pwm->hwpwm));
 writel(period, pc->base + PERIOD(pwm->hwpwm));

 return 0;
}
