
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {unsigned int npwm; int * pwms; } ;
struct lpc32xx_pwm_chip {TYPE_1__ chip; } ;


 struct lpc32xx_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwm_disable (int *) ;
 int pwmchip_remove (TYPE_1__*) ;

__attribute__((used)) static int lpc32xx_pwm_remove(struct platform_device *pdev)
{
 struct lpc32xx_pwm_chip *lpc32xx = platform_get_drvdata(pdev);
 unsigned int i;

 for (i = 0; i < lpc32xx->chip.npwm; i++)
  pwm_disable(&lpc32xx->chip.pwms[i]);

 return pwmchip_remove(&lpc32xx->chip);
}
