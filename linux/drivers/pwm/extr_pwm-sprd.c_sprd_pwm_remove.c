
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pwm_chip {int chip; } ;
struct platform_device {int dummy; } ;


 struct sprd_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int sprd_pwm_remove(struct platform_device *pdev)
{
 struct sprd_pwm_chip *spc = platform_get_drvdata(pdev);

 return pwmchip_remove(&spc->chip);
}
