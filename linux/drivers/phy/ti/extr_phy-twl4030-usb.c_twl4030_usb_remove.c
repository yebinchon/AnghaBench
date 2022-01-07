
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dev; int linkstat; int id_workaround_work; int phy; } ;
struct platform_device {int dev; } ;


 int PHY_CLK_CTRL ;
 int PHY_CLK_CTRL_CLK32K_EN ;
 int PHY_CLK_CTRL_CLOCKGATING_EN ;
 int POWER_CTRL ;
 int POWER_CTRL_OTG_ENAB ;
 int REQ_PHY_DPLL_CLK ;
 scalar_t__ cable_present (int ) ;
 int cancel_delayed_work (int *) ;
 int dev_attr_vbus ;
 int device_remove_file (int ,int *) ;
 struct twl4030_usb* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_put_sync (int ) ;
 int twl4030_usb_clear_bits (struct twl4030_usb*,int ,int ) ;
 int twl4030_usb_read (struct twl4030_usb*,int ) ;
 int twl4030_usb_set_mode (struct twl4030_usb*,int) ;
 int twl4030_usb_write (struct twl4030_usb*,int ,int ) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int twl4030_usb_remove(struct platform_device *pdev)
{
 struct twl4030_usb *twl = platform_get_drvdata(pdev);
 int val;

 usb_remove_phy(&twl->phy);
 pm_runtime_get_sync(twl->dev);
 cancel_delayed_work(&twl->id_workaround_work);
 device_remove_file(twl->dev, &dev_attr_vbus);


 twl4030_usb_set_mode(twl, -1);


 if (cable_present(twl->linkstat))
  pm_runtime_put_noidle(twl->dev);
 pm_runtime_mark_last_busy(twl->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_put_sync(twl->dev);
 pm_runtime_disable(twl->dev);





 val = twl4030_usb_read(twl, PHY_CLK_CTRL);
 if (val >= 0) {
  val |= PHY_CLK_CTRL_CLOCKGATING_EN;
  val &= ~(PHY_CLK_CTRL_CLK32K_EN | REQ_PHY_DPLL_CLK);
  twl4030_usb_write(twl, PHY_CLK_CTRL, (u8)val);
 }


 twl4030_usb_clear_bits(twl, POWER_CTRL, POWER_CTRL_OTG_ENAB);

 return 0;
}
