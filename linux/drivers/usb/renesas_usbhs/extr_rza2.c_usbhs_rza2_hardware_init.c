
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {struct phy* phy; } ;
struct platform_device {int dev; } ;
struct phy {int dummy; } ;


 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 struct phy* phy_get (int *,char*) ;
 struct usbhs_priv* usbhs_pdev_to_priv (struct platform_device*) ;

__attribute__((used)) static int usbhs_rza2_hardware_init(struct platform_device *pdev)
{
 struct usbhs_priv *priv = usbhs_pdev_to_priv(pdev);
 struct phy *phy = phy_get(&pdev->dev, "usb");

 if (IS_ERR(phy))
  return PTR_ERR(phy);

 priv->phy = phy;
 return 0;
}
