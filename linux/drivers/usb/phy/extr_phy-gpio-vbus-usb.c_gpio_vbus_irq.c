
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_otg {TYPE_1__* gadget; } ;
struct platform_device {int dev; } ;
struct gpio_vbus_mach_info {int dummy; } ;
struct TYPE_4__ {struct usb_otg* otg; } ;
struct gpio_vbus_data {int work; TYPE_2__ phy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {char* name; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,char*,char*) ;
 struct gpio_vbus_mach_info* dev_get_platdata (int *) ;
 scalar_t__ is_vbus_powered (struct gpio_vbus_mach_info*) ;
 int msecs_to_jiffies (int) ;
 struct gpio_vbus_data* platform_get_drvdata (struct platform_device*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t gpio_vbus_irq(int irq, void *data)
{
 struct platform_device *pdev = data;
 struct gpio_vbus_mach_info *pdata = dev_get_platdata(&pdev->dev);
 struct gpio_vbus_data *gpio_vbus = platform_get_drvdata(pdev);
 struct usb_otg *otg = gpio_vbus->phy.otg;

 dev_dbg(&pdev->dev, "VBUS %s (gadget: %s)\n",
  is_vbus_powered(pdata) ? "supplied" : "inactive",
  otg->gadget ? otg->gadget->name : "none");

 if (otg->gadget)
  schedule_delayed_work(&gpio_vbus->work, msecs_to_jiffies(100));

 return IRQ_HANDLED;
}
