
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int base; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int power_ctrl ;
 int usbhs_platform_call (struct usbhs_priv*,int ,struct platform_device*,int ,int) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 struct platform_device* usbhs_priv_to_pdev (struct usbhs_priv*) ;
 int usbhs_sys_clock_ctrl (struct usbhs_priv*,int) ;
 int usbhsc_clk_disable_unprepare (struct usbhs_priv*) ;
 scalar_t__ usbhsc_clk_prepare_enable (struct usbhs_priv*) ;

__attribute__((used)) static void usbhsc_power_ctrl(struct usbhs_priv *priv, int enable)
{
 struct platform_device *pdev = usbhs_priv_to_pdev(priv);
 struct device *dev = usbhs_priv_to_dev(priv);

 if (enable) {

  pm_runtime_get_sync(dev);


  if (usbhsc_clk_prepare_enable(priv))
   return;


  usbhs_platform_call(priv, power_ctrl, pdev, priv->base, enable);


  usbhs_sys_clock_ctrl(priv, enable);
 } else {

  usbhs_sys_clock_ctrl(priv, enable);


  usbhs_platform_call(priv, power_ctrl, pdev, priv->base, enable);


  usbhsc_clk_disable_unprepare(priv);


  pm_runtime_put_sync(dev);
 }
}
