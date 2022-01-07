
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx_scu_get_handle (int *) ;
 int pinctrl_ipc_handle ;

int imx_pinctrl_sc_ipc_init(struct platform_device *pdev)
{
 return imx_scu_get_handle(&pinctrl_ipc_handle);
}
