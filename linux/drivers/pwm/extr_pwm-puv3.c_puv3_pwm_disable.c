
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct puv3_pwm_chip {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct puv3_pwm_chip* to_puv3 (struct pwm_chip*) ;

__attribute__((used)) static void puv3_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct puv3_pwm_chip *puv3 = to_puv3(chip);

 clk_disable_unprepare(puv3->clk);
}
