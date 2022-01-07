
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_pwm_chip {int chip; } ;
struct platform_device {int dummy; } ;


 struct twl_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int twl_pwm_remove(struct platform_device *pdev)
{
 struct twl_pwm_chip *twl = platform_get_drvdata(pdev);

 return pwmchip_remove(&twl->chip);
}
