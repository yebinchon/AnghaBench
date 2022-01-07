
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ep93xx_pwm {int chip; } ;


 struct ep93xx_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int ep93xx_pwm_remove(struct platform_device *pdev)
{
 struct ep93xx_pwm *ep93xx_pwm = platform_get_drvdata(pdev);

 return pwmchip_remove(&ep93xx_pwm->chip);
}
