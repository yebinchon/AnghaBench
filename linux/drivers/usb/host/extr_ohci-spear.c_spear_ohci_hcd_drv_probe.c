
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {TYPE_2__ self; int rsrc_len; int rsrc_start; struct clk* regs; } ;
struct spear_ohci {struct clk* clk; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; TYPE_1__* resource; } ;
struct hc_driver {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int start; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
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
 struct hc_driver ohci_spear_hc_driver ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 struct spear_ohci* to_spear_ohci (struct usb_hcd*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int spear_ohci_hcd_drv_probe(struct platform_device *pdev)
{
 const struct hc_driver *driver = &ohci_spear_hc_driver;
 struct usb_hcd *hcd = ((void*)0);
 struct clk *usbh_clk;
 struct spear_ohci *sohci_p;
 struct resource *res;
 int retval, irq;

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

 hcd->rsrc_start = pdev->resource[0].start;
 hcd->rsrc_len = resource_size(res);

 sohci_p = to_spear_ohci(hcd);
 sohci_p->clk = usbh_clk;

 clk_prepare_enable(sohci_p->clk);

 retval = usb_add_hcd(hcd, platform_get_irq(pdev, 0), 0);
 if (retval == 0) {
  device_wakeup_enable(hcd->self.controller);
  return retval;
 }

 clk_disable_unprepare(sohci_p->clk);
err_put_hcd:
 usb_put_hcd(hcd);
fail:
 dev_err(&pdev->dev, "init fail, %d\n", retval);

 return retval;
}
