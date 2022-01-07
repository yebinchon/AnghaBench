
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;
struct kona_pwmc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int kona_pwmc_config (struct pwm_chip*,struct pwm_device*,int ,int ) ;
 int pwm_get_duty_cycle (struct pwm_device*) ;
 int pwm_get_period (struct pwm_device*) ;
 struct kona_pwmc* to_kona_pwmc (struct pwm_chip*) ;

__attribute__((used)) static int kona_pwmc_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct kona_pwmc *kp = to_kona_pwmc(chip);
 int ret;

 ret = clk_prepare_enable(kp->clk);
 if (ret < 0) {
  dev_err(chip->dev, "failed to enable clock: %d\n", ret);
  return ret;
 }

 ret = kona_pwmc_config(chip, pwm, pwm_get_duty_cycle(pwm),
          pwm_get_period(pwm));
 if (ret < 0) {
  clk_disable_unprepare(kp->clk);
  return ret;
 }

 return 0;
}
