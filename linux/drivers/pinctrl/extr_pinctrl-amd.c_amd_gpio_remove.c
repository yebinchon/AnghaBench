
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct amd_gpio {int gc; } ;


 int gpiochip_remove (int *) ;
 struct amd_gpio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int amd_gpio_remove(struct platform_device *pdev)
{
 struct amd_gpio *gpio_dev;

 gpio_dev = platform_get_drvdata(pdev);

 gpiochip_remove(&gpio_dev->gc);

 return 0;
}
