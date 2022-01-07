
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_pwm_chip {int configured; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int clear_bit (int ,int *) ;
 struct sti_pwm_chip* to_sti_pwmchip (struct pwm_chip*) ;

__attribute__((used)) static void sti_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct sti_pwm_chip *pc = to_sti_pwmchip(chip);

 clear_bit(pwm->hwpwm, &pc->configured);
}
