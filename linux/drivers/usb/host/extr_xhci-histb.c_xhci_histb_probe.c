
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd_histb {struct usb_hcd* hcd; int ctrl; int soft_reset; struct device* dev; } ;
struct xhci_hcd {int imod_interval; struct usb_hcd* shared_hcd; int hcc_params; int quirks; struct usb_hcd* main_hcd; } ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {int can_do_streams; TYPE_1__ self; int rsrc_len; int rsrc_start; int regs; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hc_driver {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCC_MAX_PSA (int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int XHCI_HW_LPM_DISABLE ;
 int XHCI_LPM_SUPPORT ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (int ,struct xhci_hcd_histb*) ;
 int device_enable_async_suspend (struct device*) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 int device_wakeup_enable (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct xhci_hcd_histb* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_control_get (struct device*,char*) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int resource_size (struct resource*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,struct device*,int ) ;
 struct usb_hcd* usb_create_shared_hcd (struct hc_driver const*,struct device*,int ,struct usb_hcd*) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int xhci_histb_clks_get (struct xhci_hcd_histb*) ;
 struct hc_driver xhci_histb_hc_driver ;
 int xhci_histb_host_disable (struct xhci_hcd_histb*) ;
 int xhci_histb_host_enable (struct xhci_hcd_histb*) ;

__attribute__((used)) static int xhci_histb_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct xhci_hcd_histb *histb;
 const struct hc_driver *driver;
 struct usb_hcd *hcd;
 struct xhci_hcd *xhci;
 struct resource *res;
 int irq;
 int ret = -ENODEV;

 if (usb_disabled())
  return -ENODEV;

 driver = &xhci_histb_hc_driver;
 histb = devm_kzalloc(dev, sizeof(*histb), GFP_KERNEL);
 if (!histb)
  return -ENOMEM;

 histb->dev = dev;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 histb->ctrl = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(histb->ctrl))
  return PTR_ERR(histb->ctrl);

 ret = xhci_histb_clks_get(histb);
 if (ret)
  return ret;

 histb->soft_reset = devm_reset_control_get(dev, "soft");
 if (IS_ERR(histb->soft_reset)) {
  dev_err(dev, "failed to get soft reset\n");
  return PTR_ERR(histb->soft_reset);
 }

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);
 device_enable_async_suspend(dev);


 ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 hcd = usb_create_hcd(driver, dev, dev_name(dev));
 if (!hcd) {
  ret = -ENOMEM;
  goto disable_pm;
 }

 hcd->regs = histb->ctrl;
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 histb->hcd = hcd;
 dev_set_drvdata(hcd->self.controller, histb);

 ret = xhci_histb_host_enable(histb);
 if (ret)
  goto put_hcd;

 xhci = hcd_to_xhci(hcd);

 device_wakeup_enable(hcd->self.controller);

 xhci->main_hcd = hcd;
 xhci->shared_hcd = usb_create_shared_hcd(driver, dev, dev_name(dev),
       hcd);
 if (!xhci->shared_hcd) {
  ret = -ENOMEM;
  goto disable_host;
 }

 if (device_property_read_bool(dev, "usb2-lpm-disable"))
  xhci->quirks |= XHCI_HW_LPM_DISABLE;

 if (device_property_read_bool(dev, "usb3-lpm-capable"))
  xhci->quirks |= XHCI_LPM_SUPPORT;


 xhci->imod_interval = 40000;
 device_property_read_u32(dev, "imod-interval-ns",
     &xhci->imod_interval);

 ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (ret)
  goto put_usb3_hcd;

 if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
  xhci->shared_hcd->can_do_streams = 1;

 ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
 if (ret)
  goto dealloc_usb2_hcd;

 device_enable_async_suspend(dev);
 pm_runtime_put_noidle(dev);





 pm_runtime_forbid(dev);

 return 0;

dealloc_usb2_hcd:
 usb_remove_hcd(hcd);
put_usb3_hcd:
 usb_put_hcd(xhci->shared_hcd);
disable_host:
 xhci_histb_host_disable(histb);
put_hcd:
 usb_put_hcd(hcd);
disable_pm:
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);

 return ret;
}
