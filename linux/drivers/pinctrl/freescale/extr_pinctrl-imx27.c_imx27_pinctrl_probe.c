
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx1_pinctrl_core_probe (struct platform_device*,int *) ;
 int imx27_pinctrl_info ;

__attribute__((used)) static int imx27_pinctrl_probe(struct platform_device *pdev)
{
 return imx1_pinctrl_core_probe(pdev, &imx27_pinctrl_info);
}
