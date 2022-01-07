
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int controller; } ;
struct usb_hcd {TYPE_2__ self; int regs; int rsrc_len; int rsrc_start; } ;
struct uhci_hcd {int is_aspeed; int clk; int rh_numports; int regs; } ;
struct resource {int start; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__* resource; TYPE_3__ dev; int name; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int start; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_3__*,char*,int) ;
 int dev_info (TYPE_3__*,char*,...) ;
 int device_wakeup_enable (int ) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int dma_coerce_mask_and_coherent (TYPE_3__*,int ) ;
 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int uhci_platform_hc_driver ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (int *,TYPE_3__*,int ) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int uhci_hcd_platform_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct usb_hcd *hcd;
 struct uhci_hcd *uhci;
 struct resource *res;
 int ret;

 if (usb_disabled())
  return -ENODEV;






 ret = dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 hcd = usb_create_hcd(&uhci_platform_hc_driver, &pdev->dev,
   pdev->name);
 if (!hcd)
  return -ENOMEM;

 uhci = hcd_to_uhci(hcd);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hcd->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hcd->regs)) {
  ret = PTR_ERR(hcd->regs);
  goto err_rmr;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 uhci->regs = hcd->regs;


 if (np) {
  u32 num_ports;

  if (of_property_read_u32(np, "#ports", &num_ports) == 0) {
   uhci->rh_numports = num_ports;
   dev_info(&pdev->dev,
    "Detected %d ports from device-tree\n",
    num_ports);
  }
  if (of_device_is_compatible(np, "aspeed,ast2400-uhci") ||
      of_device_is_compatible(np, "aspeed,ast2500-uhci")) {
   uhci->is_aspeed = 1;
   dev_info(&pdev->dev,
     "Enabled Aspeed implementation workarounds\n");
  }
 }


 uhci->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(uhci->clk)) {
  ret = PTR_ERR(uhci->clk);
  goto err_rmr;
 }
 ret = clk_prepare_enable(uhci->clk);
 if (ret) {
  dev_err(&pdev->dev, "Error couldn't enable clock (%d)\n", ret);
  goto err_rmr;
 }

 ret = usb_add_hcd(hcd, pdev->resource[1].start, IRQF_SHARED);
 if (ret)
  goto err_clk;

 device_wakeup_enable(hcd->self.controller);
 return 0;

err_clk:
 clk_disable_unprepare(uhci->clk);
err_rmr:
 usb_put_hcd(hcd);

 return ret;
}
