
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct fsl_pwm_chip {int ipg_clk; int lock; int regmap; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ has_enable_bits; } ;


 int BIT (scalar_t__) ;
 int FTM_SC ;
 int clk_disable_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_pwm_chip* to_fsl_chip (struct pwm_chip*) ;

__attribute__((used)) static void fsl_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct fsl_pwm_chip *fpc = to_fsl_chip(chip);

 if (fpc->soc->has_enable_bits) {
  mutex_lock(&fpc->lock);
  regmap_update_bits(fpc->regmap, FTM_SC, BIT(pwm->hwpwm + 16),
       0);
  mutex_unlock(&fpc->lock);
 }

 clk_disable_unprepare(fpc->ipg_clk);
}
