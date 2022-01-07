
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pwms; } ;
struct stm32_pwm_lp {TYPE_1__ chip; } ;
struct platform_device {int dummy; } ;


 struct stm32_pwm_lp* platform_get_drvdata (struct platform_device*) ;
 int pwm_disable (int *) ;
 int pwmchip_remove (TYPE_1__*) ;

__attribute__((used)) static int stm32_pwm_lp_remove(struct platform_device *pdev)
{
 struct stm32_pwm_lp *priv = platform_get_drvdata(pdev);

 pwm_disable(&priv->chip.pwms[0]);

 return pwmchip_remove(&priv->chip);
}
