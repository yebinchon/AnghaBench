
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; struct clk* regs; int rsrc_len; int rsrc_start; } ;
struct spear_ehci {struct clk* clk; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct hc_driver {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {struct clk* caps; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int device_wakeup_enable (int ) ;
 struct clk* devm_clk_get (int *,int *) ;
 struct clk* devm_ioremap_resource (int *,struct resource*) ;
 int dma_coerce_mask_and_coherent (int *,int ) ;
 struct hc_driver ehci_spear_hc_driver ;
 TYPE_2__* hcd_to_ehci (struct usb_hcd*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 struct spear_ehci* to_spear_ehci (struct usb_hcd*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,int ) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int spear_ehci_hcd_drv_probe(struct platform_device *pdev)
{
 struct usb_hcd *hcd ;
 struct spear_ehci *sehci;
 struct resource *res;
 struct clk *usbh_clk;
 const struct hc_driver *driver = &ehci_spear_hc_driver;
 int irq, retval;

 if (usb_disabled())
  return -ENODEV;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  retval = irq;
  goto fail;
 }






 retval = dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (retval)
  goto fail;

 usbh_clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(usbh_clk)) {
  dev_err(&pdev->dev, "Error getting interface clock\n");
  retval = PTR_ERR(usbh_clk);
  goto fail;
 }

 hcd = usb_create_hcd(driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  retval = -ENOMEM;
  goto fail;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hcd->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hcd->regs)) {
  retval = PTR_ERR(hcd->regs);
  goto err_put_hcd;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 sehci = to_spear_ehci(hcd);
 sehci->clk = usbh_clk;


 hcd_to_ehci(hcd)->caps = hcd->regs;

 clk_prepare_enable(sehci->clk);
 retval = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (retval)
  goto err_stop_ehci;

 device_wakeup_enable(hcd->self.controller);
 return retval;

err_stop_ehci:
 clk_disable_unprepare(sehci->clk);
err_put_hcd:
 usb_put_hcd(hcd);
fail:
 dev_err(&pdev->dev, "init fail, %d\n", retval);

 return retval ;
}
