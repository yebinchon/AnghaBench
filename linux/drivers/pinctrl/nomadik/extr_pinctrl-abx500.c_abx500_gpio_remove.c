
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct abx500_pinctrl {int chip; } ;


 int gpiochip_remove (int *) ;
 struct abx500_pinctrl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int abx500_gpio_remove(struct platform_device *pdev)
{
 struct abx500_pinctrl *pct = platform_get_drvdata(pdev);

 gpiochip_remove(&pct->chip);
 return 0;
}
