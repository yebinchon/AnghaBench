
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_otg {int dummy; } ;
struct resource {int start; unsigned long flags; } ;
struct platform_device {int dev; } ;
struct gpio_vbus_mach_info {int gpio_vbus; int gpio_pullup; int wakeup; int gpio_pullup_inverted; } ;
struct TYPE_4__ {char* label; TYPE_1__* otg; int set_suspend; int set_power; int * dev; } ;
struct gpio_vbus_data {int irq; TYPE_2__ phy; int * vbus_draw; int work; int * dev; } ;
struct TYPE_3__ {int set_peripheral; TYPE_2__* usb_phy; int state; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IORESOURCE_IRQ ;
 unsigned long IRQF_SHARED ;
 unsigned long IRQF_TRIGGER_MASK ;
 scalar_t__ IS_ERR (int *) ;
 int OTG_STATE_UNDEFINED ;
 int PTR_ERR (int *) ;
 int USB_PHY_TYPE_USB2 ;
 unsigned long VBUS_IRQ_FLAGS ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int,...) ;
 struct gpio_vbus_mach_info* dev_get_platdata (int *) ;
 int device_init_wakeup (int *,int ) ;
 int devm_gpio_request (int *,int,char*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int * devm_regulator_get (int *,char*) ;
 int devm_request_irq (int *,int,int ,unsigned long,char*,struct platform_device*) ;
 int gpio_direction_input (int) ;
 int gpio_direction_output (int,int ) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_to_irq (int) ;
 int gpio_vbus_irq ;
 int gpio_vbus_set_peripheral ;
 int gpio_vbus_set_power ;
 int gpio_vbus_set_suspend ;
 int gpio_vbus_work ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_vbus_data*) ;
 int usb_add_phy (TYPE_2__*,int ) ;

__attribute__((used)) static int gpio_vbus_probe(struct platform_device *pdev)
{
 struct gpio_vbus_mach_info *pdata = dev_get_platdata(&pdev->dev);
 struct gpio_vbus_data *gpio_vbus;
 struct resource *res;
 int err, gpio, irq;
 unsigned long irqflags;

 if (!pdata || !gpio_is_valid(pdata->gpio_vbus))
  return -EINVAL;
 gpio = pdata->gpio_vbus;

 gpio_vbus = devm_kzalloc(&pdev->dev, sizeof(struct gpio_vbus_data),
     GFP_KERNEL);
 if (!gpio_vbus)
  return -ENOMEM;

 gpio_vbus->phy.otg = devm_kzalloc(&pdev->dev, sizeof(struct usb_otg),
       GFP_KERNEL);
 if (!gpio_vbus->phy.otg)
  return -ENOMEM;

 platform_set_drvdata(pdev, gpio_vbus);
 gpio_vbus->dev = &pdev->dev;
 gpio_vbus->phy.label = "gpio-vbus";
 gpio_vbus->phy.dev = gpio_vbus->dev;
 gpio_vbus->phy.set_power = gpio_vbus_set_power;
 gpio_vbus->phy.set_suspend = gpio_vbus_set_suspend;

 gpio_vbus->phy.otg->state = OTG_STATE_UNDEFINED;
 gpio_vbus->phy.otg->usb_phy = &gpio_vbus->phy;
 gpio_vbus->phy.otg->set_peripheral = gpio_vbus_set_peripheral;

 err = devm_gpio_request(&pdev->dev, gpio, "vbus_detect");
 if (err) {
  dev_err(&pdev->dev, "can't request vbus gpio %d, err: %d\n",
   gpio, err);
  return err;
 }
 gpio_direction_input(gpio);

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res) {
  irq = res->start;
  irqflags = (res->flags & IRQF_TRIGGER_MASK) | IRQF_SHARED;
 } else {
  irq = gpio_to_irq(gpio);
  irqflags = VBUS_IRQ_FLAGS;
 }

 gpio_vbus->irq = irq;


 gpio = pdata->gpio_pullup;
 if (gpio_is_valid(gpio)) {
  err = devm_gpio_request(&pdev->dev, gpio, "udc_pullup");
  if (err) {
   dev_err(&pdev->dev,
    "can't request pullup gpio %d, err: %d\n",
    gpio, err);
   return err;
  }
  gpio_direction_output(gpio, pdata->gpio_pullup_inverted);
 }

 err = devm_request_irq(&pdev->dev, irq, gpio_vbus_irq, irqflags,
          "vbus_detect", pdev);
 if (err) {
  dev_err(&pdev->dev, "can't request irq %i, err: %d\n",
   irq, err);
  return err;
 }

 INIT_DELAYED_WORK(&gpio_vbus->work, gpio_vbus_work);

 gpio_vbus->vbus_draw = devm_regulator_get(&pdev->dev, "vbus_draw");
 if (IS_ERR(gpio_vbus->vbus_draw)) {
  dev_dbg(&pdev->dev, "can't get vbus_draw regulator, err: %ld\n",
   PTR_ERR(gpio_vbus->vbus_draw));
  gpio_vbus->vbus_draw = ((void*)0);
 }


 err = usb_add_phy(&gpio_vbus->phy, USB_PHY_TYPE_USB2);
 if (err) {
  dev_err(&pdev->dev, "can't register transceiver, err: %d\n",
   err);
  return err;
 }

 device_init_wakeup(&pdev->dev, pdata->wakeup);

 return 0;
}
