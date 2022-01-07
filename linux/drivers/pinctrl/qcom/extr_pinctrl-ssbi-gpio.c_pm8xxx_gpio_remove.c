
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_gpio {int domain; int chip; } ;
struct platform_device {int dummy; } ;


 int gpiochip_remove (int *) ;
 int irq_domain_remove (int ) ;
 struct pm8xxx_gpio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pm8xxx_gpio_remove(struct platform_device *pdev)
{
 struct pm8xxx_gpio *pctrl = platform_get_drvdata(pdev);

 gpiochip_remove(&pctrl->chip);
 irq_domain_remove(pctrl->domain);

 return 0;
}
