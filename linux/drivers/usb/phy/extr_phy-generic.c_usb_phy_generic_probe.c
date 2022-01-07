
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int shutdown; int init; TYPE_1__* otg; } ;
struct usb_phy_generic {TYPE_2__ phy; scalar_t__ gpiod_vbus; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int state; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OTG_STATE_B_IDLE ;
 int OTG_STATE_B_PERIPHERAL ;
 int VBUS_IRQ_FLAGS ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_get_platdata (struct device*) ;
 struct usb_phy_generic* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,char*,struct usb_phy_generic*) ;
 scalar_t__ gpiod_get_value (scalar_t__) ;
 int gpiod_to_irq (scalar_t__) ;
 int nop_gpio_vbus_thread ;
 int platform_set_drvdata (struct platform_device*,struct usb_phy_generic*) ;
 int usb_add_phy_dev (TYPE_2__*) ;
 int usb_gen_phy_init ;
 int usb_gen_phy_shutdown ;
 int usb_phy_gen_create_phy (struct device*,struct usb_phy_generic*,int ) ;

__attribute__((used)) static int usb_phy_generic_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct usb_phy_generic *nop;
 int err;

 nop = devm_kzalloc(dev, sizeof(*nop), GFP_KERNEL);
 if (!nop)
  return -ENOMEM;

 err = usb_phy_gen_create_phy(dev, nop, dev_get_platdata(&pdev->dev));
 if (err)
  return err;
 if (nop->gpiod_vbus) {
  err = devm_request_threaded_irq(&pdev->dev,
      gpiod_to_irq(nop->gpiod_vbus),
      ((void*)0), nop_gpio_vbus_thread,
      VBUS_IRQ_FLAGS, "vbus_detect",
      nop);
  if (err) {
   dev_err(&pdev->dev, "can't request irq %i, err: %d\n",
    gpiod_to_irq(nop->gpiod_vbus), err);
   return err;
  }
  nop->phy.otg->state = gpiod_get_value(nop->gpiod_vbus) ?
   OTG_STATE_B_PERIPHERAL : OTG_STATE_B_IDLE;
 }

 nop->phy.init = usb_gen_phy_init;
 nop->phy.shutdown = usb_gen_phy_shutdown;

 err = usb_add_phy_dev(&nop->phy);
 if (err) {
  dev_err(&pdev->dev, "can't register transceiver, err: %d\n",
   err);
  return err;
 }

 platform_set_drvdata(pdev, nop);

 return 0;
}
