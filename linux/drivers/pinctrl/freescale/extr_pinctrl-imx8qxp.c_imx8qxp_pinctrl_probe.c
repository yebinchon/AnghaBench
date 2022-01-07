
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx8qxp_pinctrl_info ;
 int imx_pinctrl_probe (struct platform_device*,int *) ;
 int imx_pinctrl_sc_ipc_init (struct platform_device*) ;

__attribute__((used)) static int imx8qxp_pinctrl_probe(struct platform_device *pdev)
{
 int ret;

 ret = imx_pinctrl_sc_ipc_init(pdev);
 if (ret)
  return ret;

 return imx_pinctrl_probe(pdev, &imx8qxp_pinctrl_info);
}
