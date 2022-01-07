
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int uniphier_pinctrl_probe (struct platform_device*,int *) ;
 int uniphier_pro5_pindata ;

__attribute__((used)) static int uniphier_pro5_pinctrl_probe(struct platform_device *pdev)
{
 return uniphier_pinctrl_probe(pdev, &uniphier_pro5_pindata);
}
