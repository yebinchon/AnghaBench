
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_imx1_chip {scalar_t__ mmio_base; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 scalar_t__ MX1_PWMP ;
 scalar_t__ MX1_PWMS ;
 int readl (scalar_t__) ;
 struct pwm_imx1_chip* to_pwm_imx1_chip (struct pwm_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pwm_imx1_config(struct pwm_chip *chip,
      struct pwm_device *pwm, int duty_ns, int period_ns)
{
 struct pwm_imx1_chip *imx = to_pwm_imx1_chip(chip);
 u32 max, p;
 max = readl(imx->mmio_base + MX1_PWMP);
 p = max * duty_ns / period_ns;

 writel(max - p, imx->mmio_base + MX1_PWMS);

 return 0;
}
