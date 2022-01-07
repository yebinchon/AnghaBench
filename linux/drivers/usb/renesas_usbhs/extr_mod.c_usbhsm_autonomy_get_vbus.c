
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct platform_device {int dummy; } ;


 int INTSTS0 ;
 int VBSTS ;
 struct usbhs_priv* usbhs_pdev_to_priv (struct platform_device*) ;
 int usbhs_read (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhsm_autonomy_get_vbus(struct platform_device *pdev)
{
 struct usbhs_priv *priv = usbhs_pdev_to_priv(pdev);

 return VBSTS & usbhs_read(priv, INTSTS0);
}
