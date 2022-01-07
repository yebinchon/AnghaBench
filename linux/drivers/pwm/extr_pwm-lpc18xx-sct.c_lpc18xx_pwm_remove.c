
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct lpc18xx_pwm_chip {int chip; int pwm_clk; } ;


 int LPC18XX_PWM_CTRL ;
 int LPC18XX_PWM_CTRL_HALT ;
 int clk_disable_unprepare (int ) ;
 int lpc18xx_pwm_readl (struct lpc18xx_pwm_chip*,int ) ;
 int lpc18xx_pwm_writel (struct lpc18xx_pwm_chip*,int ,int) ;
 struct lpc18xx_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int lpc18xx_pwm_remove(struct platform_device *pdev)
{
 struct lpc18xx_pwm_chip *lpc18xx_pwm = platform_get_drvdata(pdev);
 u32 val;

 val = lpc18xx_pwm_readl(lpc18xx_pwm, LPC18XX_PWM_CTRL);
 lpc18xx_pwm_writel(lpc18xx_pwm, LPC18XX_PWM_CTRL,
      val | LPC18XX_PWM_CTRL_HALT);

 clk_disable_unprepare(lpc18xx_pwm->pwm_clk);

 return pwmchip_remove(&lpc18xx_pwm->chip);
}
