
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int uniphier_pinctrl_probe (struct platform_device*,int *) ;
 int uniphier_pxs3_pindata ;

__attribute__((used)) static int uniphier_pxs3_pinctrl_probe(struct platform_device *pdev)
{
 return uniphier_pinctrl_probe(pdev, &uniphier_pxs3_pindata);
}
