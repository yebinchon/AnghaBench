
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pinctrl {int pctl; } ;
struct platform_device {int dummy; } ;


 int pinctrl_unregister (int ) ;
 struct sprd_pinctrl* platform_get_drvdata (struct platform_device*) ;

int sprd_pinctrl_remove(struct platform_device *pdev)
{
 struct sprd_pinctrl *sprd_pctl = platform_get_drvdata(pdev);

 pinctrl_unregister(sprd_pctl->pctl);
 return 0;
}
