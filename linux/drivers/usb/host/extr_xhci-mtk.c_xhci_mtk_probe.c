
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int has_ippc; void* ippc_regs; int hcd; int u3p_dis_msk; int lpm_support; void* vusb33; void* vbus; struct device* dev; } ;
struct xhci_hcd {int imod_interval; struct usb_hcd* shared_hcd; int hcc_params; struct usb_hcd* main_hcd; } ;
struct usb_hcd {int can_do_streams; int rsrc_len; int rsrc_start; void* regs; } ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct hc_driver {int dummy; } ;
struct device_node {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCC_MAX_PSA (int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int device_enable_async_suspend (struct device*) ;
 int device_init_wakeup (struct device*,int) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct xhci_hcd_mtk* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regulator_get (struct device*,char*) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct xhci_hcd_mtk*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int resource_size (struct resource*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,struct device*,int ) ;
 struct usb_hcd* usb_create_shared_hcd (struct hc_driver const*,struct device*,int ,struct usb_hcd*) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int usb_wakeup_of_property_parse (struct xhci_hcd_mtk*,struct device_node*) ;
 int xhci_mtk_clks_disable (struct xhci_hcd_mtk*) ;
 int xhci_mtk_clks_enable (struct xhci_hcd_mtk*) ;
 int xhci_mtk_clks_get (struct xhci_hcd_mtk*) ;
 struct hc_driver xhci_mtk_hc_driver ;
 int xhci_mtk_ldos_disable (struct xhci_hcd_mtk*) ;
 int xhci_mtk_ldos_enable (struct xhci_hcd_mtk*) ;
 int xhci_mtk_sch_exit (struct xhci_hcd_mtk*) ;

__attribute__((used)) static int xhci_mtk_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct xhci_hcd_mtk *mtk;
 const struct hc_driver *driver;
 struct xhci_hcd *xhci;
 struct resource *res;
 struct usb_hcd *hcd;
 int ret = -ENODEV;
 int irq;

 if (usb_disabled())
  return -ENODEV;

 driver = &xhci_mtk_hc_driver;
 mtk = devm_kzalloc(dev, sizeof(*mtk), GFP_KERNEL);
 if (!mtk)
  return -ENOMEM;

 mtk->dev = dev;
 mtk->vbus = devm_regulator_get(dev, "vbus");
 if (IS_ERR(mtk->vbus)) {
  dev_err(dev, "fail to get vbus\n");
  return PTR_ERR(mtk->vbus);
 }

 mtk->vusb33 = devm_regulator_get(dev, "vusb33");
 if (IS_ERR(mtk->vusb33)) {
  dev_err(dev, "fail to get vusb33\n");
  return PTR_ERR(mtk->vusb33);
 }

 ret = xhci_mtk_clks_get(mtk);
 if (ret)
  return ret;

 mtk->lpm_support = of_property_read_bool(node, "usb3-lpm-capable");

 of_property_read_u32(node, "mediatek,u3p-dis-msk",
        &mtk->u3p_dis_msk);

 ret = usb_wakeup_of_property_parse(mtk, node);
 if (ret) {
  dev_err(dev, "failed to parse uwk property\n");
  return ret;
 }

 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);
 device_enable_async_suspend(dev);

 ret = xhci_mtk_ldos_enable(mtk);
 if (ret)
  goto disable_pm;

 ret = xhci_mtk_clks_enable(mtk);
 if (ret)
  goto disable_ldos;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  goto disable_clk;
 }


 ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
 if (ret)
  goto disable_clk;

 hcd = usb_create_hcd(driver, dev, dev_name(dev));
 if (!hcd) {
  ret = -ENOMEM;
  goto disable_clk;
 }





 mtk->hcd = platform_get_drvdata(pdev);
 platform_set_drvdata(pdev, mtk);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mac");
 hcd->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(hcd->regs)) {
  ret = PTR_ERR(hcd->regs);
  goto put_usb2_hcd;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ippc");
 if (res) {
  mtk->ippc_regs = devm_ioremap_resource(dev, res);
  if (IS_ERR(mtk->ippc_regs)) {
   ret = PTR_ERR(mtk->ippc_regs);
   goto put_usb2_hcd;
  }
  mtk->has_ippc = 1;
 } else {
  mtk->has_ippc = 0;
 }

 device_init_wakeup(dev, 1);

 xhci = hcd_to_xhci(hcd);
 xhci->main_hcd = hcd;






 xhci->imod_interval = 5000;
 device_property_read_u32(dev, "imod-interval-ns", &xhci->imod_interval);

 xhci->shared_hcd = usb_create_shared_hcd(driver, dev,
   dev_name(dev), hcd);
 if (!xhci->shared_hcd) {
  ret = -ENOMEM;
  goto disable_device_wakeup;
 }

 ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (ret)
  goto put_usb3_hcd;

 if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
  xhci->shared_hcd->can_do_streams = 1;

 ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
 if (ret)
  goto dealloc_usb2_hcd;

 return 0;

dealloc_usb2_hcd:
 usb_remove_hcd(hcd);

put_usb3_hcd:
 xhci_mtk_sch_exit(mtk);
 usb_put_hcd(xhci->shared_hcd);

disable_device_wakeup:
 device_init_wakeup(dev, 0);

put_usb2_hcd:
 usb_put_hcd(hcd);

disable_clk:
 xhci_mtk_clks_disable(mtk);

disable_ldos:
 xhci_mtk_ldos_disable(mtk);

disable_pm:
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 return ret;
}
