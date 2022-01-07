
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_state {scalar_t__ enabled; } ;
struct pwm_device {int hwpwm; struct pwm_state state; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {size_t clk_select; } ;
struct fsl_pwm_chip {int lock; int regmap; TYPE_1__ period; int * clk; } ;


 int BIT (int ) ;
 size_t FSL_PWM_CLK_CNTEN ;
 int FTM_OUTMASK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int fsl_pwm_apply_config (struct fsl_pwm_chip*,struct pwm_device*,struct pwm_state const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_pwm_chip* to_fsl_chip (struct pwm_chip*) ;

__attribute__((used)) static int fsl_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
    const struct pwm_state *newstate)
{
 struct fsl_pwm_chip *fpc = to_fsl_chip(chip);
 struct pwm_state *oldstate = &pwm->state;
 int ret = 0;
 mutex_lock(&fpc->lock);

 if (!newstate->enabled) {
  if (oldstate->enabled) {
   regmap_update_bits(fpc->regmap, FTM_OUTMASK,
        BIT(pwm->hwpwm), BIT(pwm->hwpwm));
   clk_disable_unprepare(fpc->clk[FSL_PWM_CLK_CNTEN]);
   clk_disable_unprepare(fpc->clk[fpc->period.clk_select]);
  }

  goto end_mutex;
 }

 ret = fsl_pwm_apply_config(fpc, pwm, newstate);
 if (ret)
  goto end_mutex;


 if (!oldstate->enabled) {
  ret = clk_prepare_enable(fpc->clk[fpc->period.clk_select]);
  if (ret)
   goto end_mutex;

  ret = clk_prepare_enable(fpc->clk[FSL_PWM_CLK_CNTEN]);
  if (ret) {
   clk_disable_unprepare(fpc->clk[fpc->period.clk_select]);
   goto end_mutex;
  }

  regmap_update_bits(fpc->regmap, FTM_OUTMASK, BIT(pwm->hwpwm),
       0);
 }

end_mutex:
 mutex_unlock(&fpc->lock);
 return ret;
}
