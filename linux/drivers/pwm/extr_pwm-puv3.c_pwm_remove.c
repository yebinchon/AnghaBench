
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puv3_pwm_chip {int chip; } ;
struct platform_device {int dummy; } ;


 struct puv3_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pwm_remove(struct platform_device *pdev)
{
 struct puv3_pwm_chip *puv3 = platform_get_drvdata(pdev);

 return pwmchip_remove(&puv3->chip);
}
