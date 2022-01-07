
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx_pinctrl_probe (struct platform_device*,int *) ;
 int vf610_pinctrl_info ;

__attribute__((used)) static int vf610_pinctrl_probe(struct platform_device *pdev)
{
 return imx_pinctrl_probe(pdev, &vf610_pinctrl_info);
}
