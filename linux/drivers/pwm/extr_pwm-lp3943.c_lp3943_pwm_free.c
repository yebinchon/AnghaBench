
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct lp3943_pwm_map {int dummy; } ;
struct lp3943_pwm {int dummy; } ;


 int lp3943_pwm_free_map (struct lp3943_pwm*,struct lp3943_pwm_map*) ;
 struct lp3943_pwm_map* pwm_get_chip_data (struct pwm_device*) ;
 struct lp3943_pwm* to_lp3943_pwm (struct pwm_chip*) ;

__attribute__((used)) static void lp3943_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct lp3943_pwm *lp3943_pwm = to_lp3943_pwm(chip);
 struct lp3943_pwm_map *pwm_map = pwm_get_chip_data(pwm);

 lp3943_pwm_free_map(lp3943_pwm, pwm_map);
}
