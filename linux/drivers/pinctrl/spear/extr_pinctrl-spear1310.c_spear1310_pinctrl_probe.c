
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int spear1310_machdata ;
 int spear_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int spear1310_pinctrl_probe(struct platform_device *pdev)
{
 return spear_pinctrl_probe(pdev, &spear1310_machdata);
}
