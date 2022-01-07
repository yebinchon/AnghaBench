
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx28_pinctrl_data ;
 int mxs_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int imx28_pinctrl_probe(struct platform_device *pdev)
{
 return mxs_pinctrl_probe(pdev, &imx28_pinctrl_data);
}
