
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_imx27_chip {scalar_t__ mmio_base; } ;
struct pwm_chip {struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ MX3_PWMCR ;
 int MX3_PWMCR_SWR ;
 int MX3_PWM_SWR_LOOP ;
 int dev_warn (struct device*,char*) ;
 int readl (scalar_t__) ;
 struct pwm_imx27_chip* to_pwm_imx27_chip (struct pwm_chip*) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pwm_imx27_sw_reset(struct pwm_chip *chip)
{
 struct pwm_imx27_chip *imx = to_pwm_imx27_chip(chip);
 struct device *dev = chip->dev;
 int wait_count = 0;
 u32 cr;

 writel(MX3_PWMCR_SWR, imx->mmio_base + MX3_PWMCR);
 do {
  usleep_range(200, 1000);
  cr = readl(imx->mmio_base + MX3_PWMCR);
 } while ((cr & MX3_PWMCR_SWR) &&
   (wait_count++ < MX3_PWM_SWR_LOOP));

 if (cr & MX3_PWMCR_SWR)
  dev_warn(dev, "software reset timeout\n");
}
