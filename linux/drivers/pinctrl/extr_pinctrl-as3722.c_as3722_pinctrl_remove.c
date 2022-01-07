
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct as3722_pctrl_info {int gpio_chip; } ;


 int gpiochip_remove (int *) ;
 struct as3722_pctrl_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int as3722_pinctrl_remove(struct platform_device *pdev)
{
 struct as3722_pctrl_info *as_pci = platform_get_drvdata(pdev);

 gpiochip_remove(&as_pci->gpio_chip);
 return 0;
}
