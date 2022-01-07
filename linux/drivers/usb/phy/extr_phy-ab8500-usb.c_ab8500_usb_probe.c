
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_otg {int set_peripheral; int set_host; TYPE_1__* usb_phy; int state; } ;
struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {char* label; struct usb_otg* otg; int set_suspend; TYPE_2__* dev; } ;
struct ab8500_usb {int flags; struct ab8500* ab8500; TYPE_1__ phy; int sysclk; TYPE_2__* dev; int phy_dis_work; } ;
struct ab8500 {int dummy; } ;


 int AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE ;
 int AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ ;
 int AB8500_USB_FLAG_USE_LINK_STATUS_IRQ ;
 int AB8500_USB_FLAG_USE_VBUS_DET_IRQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int OTG_STATE_UNDEFINED ;
 int PTR_ERR (int ) ;
 int USB_PHY_TYPE_USB2 ;
 int ab8500_usb_irq_setup (struct platform_device*,struct ab8500_usb*) ;
 int ab8500_usb_phy_disable_work ;
 int ab8500_usb_regulator_get (struct ab8500_usb*) ;
 int ab8500_usb_restart_phy (struct ab8500_usb*) ;
 int ab8500_usb_set_ab8500_tuning_values (struct ab8500_usb*) ;
 int ab8500_usb_set_ab8505_tuning_values (struct ab8500_usb*) ;
 int ab8500_usb_set_host ;
 int ab8500_usb_set_peripheral ;
 int ab8500_usb_set_suspend ;
 int ab8500_usb_wd_workaround (struct ab8500_usb*) ;
 int abx500_get_chip_id (TYPE_2__*) ;
 int abx500_usb_link_status_update (struct ab8500_usb*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct ab8500* dev_get_drvdata (int ) ;
 int dev_info (TYPE_2__*,char*,int) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 void* devm_kzalloc (TYPE_2__*,int,int ) ;
 scalar_t__ is_ab8500 (struct ab8500*) ;
 scalar_t__ is_ab8500_1p1_or_earlier (struct ab8500*) ;
 scalar_t__ is_ab8500_2p0_or_earlier (struct ab8500*) ;
 scalar_t__ is_ab8505 (struct ab8500*) ;
 int platform_set_drvdata (struct platform_device*,struct ab8500_usb*) ;
 int usb_add_phy (TYPE_1__*,int ) ;

__attribute__((used)) static int ab8500_usb_probe(struct platform_device *pdev)
{
 struct ab8500_usb *ab;
 struct ab8500 *ab8500;
 struct usb_otg *otg;
 int err;
 int rev;

 ab8500 = dev_get_drvdata(pdev->dev.parent);
 rev = abx500_get_chip_id(&pdev->dev);

 if (is_ab8500_1p1_or_earlier(ab8500)) {
  dev_err(&pdev->dev, "Unsupported AB8500 chip rev=%d\n", rev);
  return -ENODEV;
 }

 ab = devm_kzalloc(&pdev->dev, sizeof(*ab), GFP_KERNEL);
 if (!ab)
  return -ENOMEM;

 otg = devm_kzalloc(&pdev->dev, sizeof(*otg), GFP_KERNEL);
 if (!otg)
  return -ENOMEM;

 ab->dev = &pdev->dev;
 ab->ab8500 = ab8500;
 ab->phy.dev = ab->dev;
 ab->phy.otg = otg;
 ab->phy.label = "ab8500";
 ab->phy.set_suspend = ab8500_usb_set_suspend;
 ab->phy.otg->state = OTG_STATE_UNDEFINED;

 otg->usb_phy = &ab->phy;
 otg->set_host = ab8500_usb_set_host;
 otg->set_peripheral = ab8500_usb_set_peripheral;

 if (is_ab8500(ab->ab8500)) {
  ab->flags |= AB8500_USB_FLAG_USE_LINK_STATUS_IRQ |
   AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ |
   AB8500_USB_FLAG_USE_VBUS_DET_IRQ |
   AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE;
 } else if (is_ab8505(ab->ab8500)) {
  ab->flags |= AB8500_USB_FLAG_USE_LINK_STATUS_IRQ |
   AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ |
   AB8500_USB_FLAG_USE_VBUS_DET_IRQ |
   AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE;
 }


 if (is_ab8500_2p0_or_earlier(ab->ab8500))
  ab->flags &= ~AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE;

 platform_set_drvdata(pdev, ab);


 INIT_WORK(&ab->phy_dis_work, ab8500_usb_phy_disable_work);

 err = ab8500_usb_regulator_get(ab);
 if (err)
  return err;

 ab->sysclk = devm_clk_get(ab->dev, "sysclk");
 if (IS_ERR(ab->sysclk)) {
  dev_err(ab->dev, "Could not get sysclk.\n");
  return PTR_ERR(ab->sysclk);
 }

 err = ab8500_usb_irq_setup(pdev, ab);
 if (err < 0)
  return err;

 err = usb_add_phy(&ab->phy, USB_PHY_TYPE_USB2);
 if (err) {
  dev_err(&pdev->dev, "Can't register transceiver\n");
  return err;
 }

 if (is_ab8500(ab->ab8500) && !is_ab8500_2p0_or_earlier(ab->ab8500))

  ab8500_usb_set_ab8500_tuning_values(ab);
 else if (is_ab8505(ab->ab8500))

  ab8500_usb_set_ab8505_tuning_values(ab);


 ab8500_usb_wd_workaround(ab);





 ab8500_usb_restart_phy(ab);

 abx500_usb_link_status_update(ab);

 dev_info(&pdev->dev, "revision 0x%2x driver initialized\n", rev);

 return 0;
}
