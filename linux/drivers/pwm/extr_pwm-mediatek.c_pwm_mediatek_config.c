
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pwm_mediatek_chip {TYPE_1__* soc; int * clk_pwms; } ;
struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int dev; } ;
struct TYPE_2__ {scalar_t__ pwm45_fixup; } ;


 int BIT (int) ;
 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int EINVAL ;
 scalar_t__ NSEC_PER_SEC ;
 int PWM45DWIDTH_FIXUP ;
 int PWM45THRES_FIXUP ;
 int PWMCON ;
 int PWMDWIDTH ;
 int PWMTHRES ;
 int PWM_CLK_DIV_MAX ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*,int) ;
 int do_div (int,int ) ;
 int pwm_mediatek_clk_disable (struct pwm_chip*,struct pwm_device*) ;
 int pwm_mediatek_clk_enable (struct pwm_chip*,struct pwm_device*) ;
 int pwm_mediatek_writel (struct pwm_mediatek_chip*,int,int,int) ;
 struct pwm_mediatek_chip* to_pwm_mediatek_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_mediatek_config(struct pwm_chip *chip, struct pwm_device *pwm,
          int duty_ns, int period_ns)
{
 struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 u32 clkdiv = 0, cnt_period, cnt_duty, reg_width = PWMDWIDTH,
     reg_thres = PWMTHRES;
 u64 resolution;
 int ret;

 ret = pwm_mediatek_clk_enable(chip, pwm);

 if (ret < 0)
  return ret;


 resolution = (u64)NSEC_PER_SEC * 1000;
 do_div(resolution, clk_get_rate(pc->clk_pwms[pwm->hwpwm]));

 cnt_period = DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000, resolution);
 while (cnt_period > 8191) {
  resolution *= 2;
  clkdiv++;
  cnt_period = DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000,
         resolution);
 }

 if (clkdiv > PWM_CLK_DIV_MAX) {
  pwm_mediatek_clk_disable(chip, pwm);
  dev_err(chip->dev, "period %d not supported\n", period_ns);
  return -EINVAL;
 }

 if (pc->soc->pwm45_fixup && pwm->hwpwm > 2) {




  reg_width = PWM45DWIDTH_FIXUP;
  reg_thres = PWM45THRES_FIXUP;
 }

 cnt_duty = DIV_ROUND_CLOSEST_ULL((u64)duty_ns * 1000, resolution);
 pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
 pwm_mediatek_writel(pc, pwm->hwpwm, reg_width, cnt_period);
 pwm_mediatek_writel(pc, pwm->hwpwm, reg_thres, cnt_duty);

 pwm_mediatek_clk_disable(chip, pwm);

 return 0;
}
