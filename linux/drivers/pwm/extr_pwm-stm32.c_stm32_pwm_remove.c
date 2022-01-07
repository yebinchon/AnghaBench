
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int npwm; int * pwms; } ;
struct stm32_pwm {TYPE_1__ chip; } ;
struct platform_device {int dummy; } ;


 struct stm32_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwm_disable (int *) ;
 int pwmchip_remove (TYPE_1__*) ;

__attribute__((used)) static int stm32_pwm_remove(struct platform_device *pdev)
{
 struct stm32_pwm *priv = platform_get_drvdata(pdev);
 unsigned int i;

 for (i = 0; i < priv->chip.npwm; i++)
  pwm_disable(&priv->chip.pwms[i]);

 pwmchip_remove(&priv->chip);

 return 0;
}
