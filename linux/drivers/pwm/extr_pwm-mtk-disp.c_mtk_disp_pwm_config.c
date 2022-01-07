
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct mtk_disp_pwm {int clk_main; int clk_mm; TYPE_1__* data; } ;
struct TYPE_2__ {int commit_mask; int commit; scalar_t__ has_commit; int con1; int con0; } ;


 int EINVAL ;
 int NSEC_PER_SEC ;
 int PWM_CLKDIV_MASK ;
 int PWM_CLKDIV_MAX ;
 int PWM_CLKDIV_SHIFT ;
 int PWM_HIGH_WIDTH_MASK ;
 int PWM_HIGH_WIDTH_SHIFT ;
 int PWM_PERIOD_BIT_WIDTH ;
 int PWM_PERIOD_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int div64_u64 (int,int) ;
 int div_u64 (int,int) ;
 int mtk_disp_pwm_update_bits (struct mtk_disp_pwm*,int ,int,int) ;
 struct mtk_disp_pwm* to_mtk_disp_pwm (struct pwm_chip*) ;

__attribute__((used)) static int mtk_disp_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
          int duty_ns, int period_ns)
{
 struct mtk_disp_pwm *mdp = to_mtk_disp_pwm(chip);
 u32 clk_div, period, high_width, value;
 u64 div, rate;
 int err;
 rate = clk_get_rate(mdp->clk_main);
 clk_div = div_u64(rate * period_ns, NSEC_PER_SEC) >>
     PWM_PERIOD_BIT_WIDTH;
 if (clk_div > PWM_CLKDIV_MAX)
  return -EINVAL;

 div = NSEC_PER_SEC * (clk_div + 1);
 period = div64_u64(rate * period_ns, div);
 if (period > 0)
  period--;

 high_width = div64_u64(rate * duty_ns, div);
 value = period | (high_width << PWM_HIGH_WIDTH_SHIFT);

 err = clk_enable(mdp->clk_main);
 if (err < 0)
  return err;

 err = clk_enable(mdp->clk_mm);
 if (err < 0) {
  clk_disable(mdp->clk_main);
  return err;
 }

 mtk_disp_pwm_update_bits(mdp, mdp->data->con0,
     PWM_CLKDIV_MASK,
     clk_div << PWM_CLKDIV_SHIFT);
 mtk_disp_pwm_update_bits(mdp, mdp->data->con1,
     PWM_PERIOD_MASK | PWM_HIGH_WIDTH_MASK,
     value);

 if (mdp->data->has_commit) {
  mtk_disp_pwm_update_bits(mdp, mdp->data->commit,
      mdp->data->commit_mask,
      mdp->data->commit_mask);
  mtk_disp_pwm_update_bits(mdp, mdp->data->commit,
      mdp->data->commit_mask,
      0x0);
 }

 clk_disable(mdp->clk_mm);
 clk_disable(mdp->clk_main);

 return 0;
}
