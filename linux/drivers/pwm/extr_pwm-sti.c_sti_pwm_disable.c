
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_pwm_chip {int sti_pwm_lock; int cpt_clk; int pwm_clk; int pwm_out_en; scalar_t__ en_count; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int ) ;
 struct sti_pwm_chip* to_sti_pwmchip (struct pwm_chip*) ;

__attribute__((used)) static void sti_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct sti_pwm_chip *pc = to_sti_pwmchip(chip);

 mutex_lock(&pc->sti_pwm_lock);

 if (--pc->en_count) {
  mutex_unlock(&pc->sti_pwm_lock);
  return;
 }

 regmap_field_write(pc->pwm_out_en, 0);

 clk_disable(pc->pwm_clk);
 clk_disable(pc->cpt_clk);

 mutex_unlock(&pc->sti_pwm_lock);
}
