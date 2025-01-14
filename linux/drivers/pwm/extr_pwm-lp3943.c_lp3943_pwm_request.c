
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lp3943_pwm_map {int dummy; } ;
struct lp3943_pwm {int dummy; } ;


 scalar_t__ IS_ERR (struct lp3943_pwm_map*) ;
 int PTR_ERR (struct lp3943_pwm_map*) ;
 struct lp3943_pwm_map* lp3943_pwm_request_map (struct lp3943_pwm*,int ) ;
 int pwm_set_chip_data (struct pwm_device*,struct lp3943_pwm_map*) ;
 struct lp3943_pwm* to_lp3943_pwm (struct pwm_chip*) ;

__attribute__((used)) static int lp3943_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct lp3943_pwm *lp3943_pwm = to_lp3943_pwm(chip);
 struct lp3943_pwm_map *pwm_map;

 pwm_map = lp3943_pwm_request_map(lp3943_pwm, pwm->hwpwm);
 if (IS_ERR(pwm_map))
  return PTR_ERR(pwm_map);

 return pwm_set_chip_data(pwm, pwm_map);
}
