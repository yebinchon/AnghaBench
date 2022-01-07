
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct ecap_pwm_chip {TYPE_1__ chip; scalar_t__ mmio_base; } ;


 scalar_t__ ECCTL2 ;
 int ECCTL2_APWM_MODE ;
 int ECCTL2_TSCTR_FREERUN ;
 int pm_runtime_put_sync (int ) ;
 int readw (scalar_t__) ;
 struct ecap_pwm_chip* to_ecap_pwm_chip (struct pwm_chip*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void ecap_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct ecap_pwm_chip *pc = to_ecap_pwm_chip(chip);
 u16 value;





 value = readw(pc->mmio_base + ECCTL2);
 value &= ~(ECCTL2_TSCTR_FREERUN | ECCTL2_APWM_MODE);
 writew(value, pc->mmio_base + ECCTL2);


 pm_runtime_put_sync(pc->chip.dev);
}
