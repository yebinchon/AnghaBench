
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct brcmstb_pwm {int dummy; } ;


 int brcmstb_pwm_enable_set (struct brcmstb_pwm*,int ,int) ;
 struct brcmstb_pwm* to_brcmstb_pwm (struct pwm_chip*) ;

__attribute__((used)) static int brcmstb_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct brcmstb_pwm *p = to_brcmstb_pwm(chip);

 brcmstb_pwm_enable_set(p, pwm->hwpwm, 1);

 return 0;
}
