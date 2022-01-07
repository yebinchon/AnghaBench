
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct fsl_pwm_chip {int lock; int regmap; TYPE_1__* soc; int ipg_clk; } ;
struct TYPE_2__ {scalar_t__ has_enable_bits; } ;


 int BIT (scalar_t__) ;
 int FTM_SC ;
 int clk_prepare_enable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_pwm_chip* to_fsl_chip (struct pwm_chip*) ;

__attribute__((used)) static int fsl_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 int ret;
 struct fsl_pwm_chip *fpc = to_fsl_chip(chip);

 ret = clk_prepare_enable(fpc->ipg_clk);
 if (!ret && fpc->soc->has_enable_bits) {
  mutex_lock(&fpc->lock);
  regmap_update_bits(fpc->regmap, FTM_SC, BIT(pwm->hwpwm + 16),
       BIT(pwm->hwpwm + 16));
  mutex_unlock(&fpc->lock);
 }

 return ret;
}
