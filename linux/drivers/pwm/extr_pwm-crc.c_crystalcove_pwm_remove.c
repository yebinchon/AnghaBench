
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct crystalcove_pwm {int chip; } ;


 struct crystalcove_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int crystalcove_pwm_remove(struct platform_device *pdev)
{
 struct crystalcove_pwm *pwm = platform_get_drvdata(pdev);

 return pwmchip_remove(&pwm->chip);
}
