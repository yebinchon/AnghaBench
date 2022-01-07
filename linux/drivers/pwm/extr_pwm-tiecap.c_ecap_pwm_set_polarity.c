
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
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 scalar_t__ ECCTL2 ;
 int ECCTL2_APWM_POL_LOW ;
 int PWM_POLARITY_INVERSED ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int readw (scalar_t__) ;
 struct ecap_pwm_chip* to_ecap_pwm_chip (struct pwm_chip*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int ecap_pwm_set_polarity(struct pwm_chip *chip, struct pwm_device *pwm,
     enum pwm_polarity polarity)
{
 struct ecap_pwm_chip *pc = to_ecap_pwm_chip(chip);
 u16 value;

 pm_runtime_get_sync(pc->chip.dev);

 value = readw(pc->mmio_base + ECCTL2);

 if (polarity == PWM_POLARITY_INVERSED)

  value |= ECCTL2_APWM_POL_LOW;
 else

  value &= ~ECCTL2_APWM_POL_LOW;

 writew(value, pc->mmio_base + ECCTL2);

 pm_runtime_put_sync(pc->chip.dev);

 return 0;
}
