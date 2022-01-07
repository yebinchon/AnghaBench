
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vt8500_chip {int clk; scalar_t__ base; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int CTRL_ENABLE ;
 scalar_t__ REG_CTRL (int ) ;
 int STATUS_CTRL_UPDATE ;
 int clk_disable (int ) ;
 int pwm_busy_wait (struct vt8500_chip*,int ,int ) ;
 int readl (scalar_t__) ;
 struct vt8500_chip* to_vt8500_chip (struct pwm_chip*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vt8500_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct vt8500_chip *vt8500 = to_vt8500_chip(chip);
 u32 val;

 val = readl(vt8500->base + REG_CTRL(pwm->hwpwm));
 val &= ~CTRL_ENABLE;
 writel(val, vt8500->base + REG_CTRL(pwm->hwpwm));
 pwm_busy_wait(vt8500, pwm->hwpwm, STATUS_CTRL_UPDATE);

 clk_disable(vt8500->clk);
}
