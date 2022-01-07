
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int * phy; } ;
struct platform_device {int dummy; } ;


 int phy_put (int *) ;
 struct usbhs_priv* usbhs_pdev_to_priv (struct platform_device*) ;

__attribute__((used)) static int usbhs_rza2_hardware_exit(struct platform_device *pdev)
{
 struct usbhs_priv *priv = usbhs_pdev_to_priv(pdev);

 phy_put(priv->phy);
 priv->phy = ((void*)0);

 return 0;
}
