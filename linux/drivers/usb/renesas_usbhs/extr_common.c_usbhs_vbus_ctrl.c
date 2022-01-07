
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct platform_device {int dummy; } ;


 int set_vbus ;
 int usbhs_platform_call (struct usbhs_priv*,int ,struct platform_device*,int) ;
 struct platform_device* usbhs_priv_to_pdev (struct usbhs_priv*) ;

int usbhs_vbus_ctrl(struct usbhs_priv *priv, int enable)
{
 struct platform_device *pdev = usbhs_priv_to_pdev(priv);

 return usbhs_platform_call(priv, set_vbus, pdev, enable);
}
