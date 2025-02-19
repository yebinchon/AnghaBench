
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; int rsrc_len; int rsrc_start; int * regs; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct da8xx_ohci_hcd {int * oc_gpio; int * vbus_reg; int * usb11_phy; int * usb11_clk; struct usb_hcd* hcd; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GPIOD_IN ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int device_wakeup_enable (int ) ;
 int * devm_clk_get (struct device*,int *) ;
 int * devm_gpiod_get_optional (struct device*,char*,int ) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 int * devm_phy_get (struct device*,char*) ;
 int * devm_regulator_get_optional (struct device*,char*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct da8xx_ohci_hcd*) ;
 int gpiod_to_irq (int *) ;
 int ohci_da8xx_hc_driver ;
 int ohci_da8xx_oc_thread ;
 int ohci_da8xx_register_notify (struct usb_hcd*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (int *,struct device*,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_da8xx_probe(struct platform_device *pdev)
{
 struct da8xx_ohci_hcd *da8xx_ohci;
 struct device *dev = &pdev->dev;
 int error, hcd_irq, oc_irq;
 struct usb_hcd *hcd;
 struct resource *mem;

 hcd = usb_create_hcd(&ohci_da8xx_hc_driver, dev, dev_name(dev));
 if (!hcd)
  return -ENOMEM;

 da8xx_ohci = to_da8xx_ohci(hcd);
 da8xx_ohci->hcd = hcd;

 da8xx_ohci->usb11_clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(da8xx_ohci->usb11_clk)) {
  error = PTR_ERR(da8xx_ohci->usb11_clk);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Failed to get clock.\n");
  goto err;
 }

 da8xx_ohci->usb11_phy = devm_phy_get(dev, "usb-phy");
 if (IS_ERR(da8xx_ohci->usb11_phy)) {
  error = PTR_ERR(da8xx_ohci->usb11_phy);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Failed to get phy.\n");
  goto err;
 }

 da8xx_ohci->vbus_reg = devm_regulator_get_optional(dev, "vbus");
 if (IS_ERR(da8xx_ohci->vbus_reg)) {
  error = PTR_ERR(da8xx_ohci->vbus_reg);
  if (error == -ENODEV) {
   da8xx_ohci->vbus_reg = ((void*)0);
  } else if (error == -EPROBE_DEFER) {
   goto err;
  } else {
   dev_err(dev, "Failed to get regulator\n");
   goto err;
  }
 }

 da8xx_ohci->oc_gpio = devm_gpiod_get_optional(dev, "oc", GPIOD_IN);
 if (IS_ERR(da8xx_ohci->oc_gpio))
  goto err;

 if (da8xx_ohci->oc_gpio) {
  oc_irq = gpiod_to_irq(da8xx_ohci->oc_gpio);
  if (oc_irq < 0)
   goto err;

  error = devm_request_threaded_irq(dev, oc_irq, ((void*)0),
    ohci_da8xx_oc_thread, IRQF_TRIGGER_RISING |
    IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
    "OHCI over-current indicator", da8xx_ohci);
  if (error)
   goto err;
 }

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hcd->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(hcd->regs)) {
  error = PTR_ERR(hcd->regs);
  goto err;
 }
 hcd->rsrc_start = mem->start;
 hcd->rsrc_len = resource_size(mem);

 hcd_irq = platform_get_irq(pdev, 0);
 if (hcd_irq < 0) {
  error = -ENODEV;
  goto err;
 }

 error = usb_add_hcd(hcd, hcd_irq, 0);
 if (error)
  goto err;

 device_wakeup_enable(hcd->self.controller);

 error = ohci_da8xx_register_notify(hcd);
 if (error)
  goto err_remove_hcd;

 return 0;

err_remove_hcd:
 usb_remove_hcd(hcd);
err:
 usb_put_hcd(hcd);
 return error;
}
