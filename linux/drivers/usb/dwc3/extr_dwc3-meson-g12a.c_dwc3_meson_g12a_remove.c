
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dwc3_meson_g12a {int * phys; int role_switch; } ;


 int PHY_COUNT ;
 int of_platform_depopulate (struct device*) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 struct dwc3_meson_g12a* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int usb_role_switch_unregister (int ) ;

__attribute__((used)) static int dwc3_meson_g12a_remove(struct platform_device *pdev)
{
 struct dwc3_meson_g12a *priv = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 int i;

 usb_role_switch_unregister(priv->role_switch);

 of_platform_depopulate(dev);

 for (i = 0 ; i < PHY_COUNT ; ++i) {
  phy_power_off(priv->phys[i]);
  phy_exit(priv->phys[i]);
 }

 pm_runtime_disable(dev);
 pm_runtime_put_noidle(dev);
 pm_runtime_set_suspended(dev);

 return 0;
}
