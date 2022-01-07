
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lp3943_pwm {int chip; } ;


 struct lp3943_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int lp3943_pwm_remove(struct platform_device *pdev)
{
 struct lp3943_pwm *lp3943_pwm = platform_get_drvdata(pdev);

 return pwmchip_remove(&lp3943_pwm->chip);
}
