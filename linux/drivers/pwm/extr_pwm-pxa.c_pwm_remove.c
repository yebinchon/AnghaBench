
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_pwm_chip {int chip; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 struct pxa_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pwm_remove(struct platform_device *pdev)
{
 struct pxa_pwm_chip *chip;

 chip = platform_get_drvdata(pdev);
 if (chip == ((void*)0))
  return -ENODEV;

 return pwmchip_remove(&chip->chip);
}
