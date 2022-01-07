
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vt8500_chip {scalar_t__ base; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 int CTRL_INVERT ;
 int PWM_POLARITY_INVERSED ;
 scalar_t__ REG_CTRL (int ) ;
 int STATUS_CTRL_UPDATE ;
 int pwm_busy_wait (struct vt8500_chip*,int ,int ) ;
 int readl (scalar_t__) ;
 struct vt8500_chip* to_vt8500_chip (struct pwm_chip*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int vt8500_pwm_set_polarity(struct pwm_chip *chip,
       struct pwm_device *pwm,
       enum pwm_polarity polarity)
{
 struct vt8500_chip *vt8500 = to_vt8500_chip(chip);
 u32 val;

 val = readl(vt8500->base + REG_CTRL(pwm->hwpwm));

 if (polarity == PWM_POLARITY_INVERSED)
  val |= CTRL_INVERT;
 else
  val &= ~CTRL_INVERT;

 writel(val, vt8500->base + REG_CTRL(pwm->hwpwm));
 pwm_busy_wait(vt8500, pwm->hwpwm, STATUS_CTRL_UPDATE);

 return 0;
}
