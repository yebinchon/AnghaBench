
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int rsts; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int hardware_exit ;
 int pm_runtime_disable (int *) ;
 int reset_control_assert (int ) ;
 int runtime_pwctrl ;
 int usbhs_fifo_remove (struct usbhs_priv*) ;
 int usbhs_get_dparam (struct usbhs_priv*,int ) ;
 int usbhs_mod_remove (struct usbhs_priv*) ;
 struct usbhs_priv* usbhs_pdev_to_priv (struct platform_device*) ;
 int usbhs_pipe_remove (struct usbhs_priv*) ;
 int usbhs_platform_call (struct usbhs_priv*,int ,struct platform_device*) ;
 int usbhsc_clk_put (struct usbhs_priv*) ;
 int usbhsc_power_ctrl (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhs_remove(struct platform_device *pdev)
{
 struct usbhs_priv *priv = usbhs_pdev_to_priv(pdev);

 dev_dbg(&pdev->dev, "usb remove\n");


 if (!usbhs_get_dparam(priv, runtime_pwctrl))
  usbhsc_power_ctrl(priv, 0);

 pm_runtime_disable(&pdev->dev);

 usbhs_platform_call(priv, hardware_exit, pdev);
 usbhsc_clk_put(priv);
 reset_control_assert(priv->rsts);
 usbhs_mod_remove(priv);
 usbhs_fifo_remove(priv);
 usbhs_pipe_remove(priv);

 return 0;
}
