
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct jz4740_pwm_chip {int chip; } ;


 struct jz4740_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int jz4740_pwm_remove(struct platform_device *pdev)
{
 struct jz4740_pwm_chip *jz4740 = platform_get_drvdata(pdev);

 return pwmchip_remove(&jz4740->chip);
}
