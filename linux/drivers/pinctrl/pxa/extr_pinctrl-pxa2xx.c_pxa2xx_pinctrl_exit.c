
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_pinctrl {int pctl_dev; } ;
struct platform_device {int dummy; } ;


 int pinctrl_unregister (int ) ;
 struct pxa_pinctrl* platform_get_drvdata (struct platform_device*) ;

int pxa2xx_pinctrl_exit(struct platform_device *pdev)
{
 struct pxa_pinctrl *pctl = platform_get_drvdata(pdev);

 pinctrl_unregister(pctl->pctl_dev);
 return 0;
}
