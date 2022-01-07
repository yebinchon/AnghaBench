
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_plat_priv {int dummy; } ;
struct xhci_hcd {int imod_interval; int * reg_clk; int * clk; struct usb_hcd* shared_hcd; int hcc_params; int quirks; struct usb_hcd* main_hcd; } ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {int can_do_streams; int * usb_phy; int tpl_support; TYPE_1__ self; int rsrc_len; int rsrc_start; int * regs; } ;
struct resource {int start; } ;
struct device {int of_node; struct device* parent; int dma_mask; int * bus; int fwnode; } ;
struct platform_device {struct device dev; } ;
struct hc_driver {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int HCC_MAX_PSA (int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ WARN_ON (int) ;
 int XHCI_BROKEN_PORT_PED ;
 int XHCI_HW_LPM_DISABLE ;
 int XHCI_LPM_SUPPORT ;
 void* __usb_create_hcd (struct hc_driver const*,struct device*,struct device*,int ,struct usb_hcd*) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_name (struct device*) ;
 int device_enable_async_suspend (struct device*) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 int device_wakeup_enable (int ) ;
 void* devm_clk_get_optional (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 int * devm_usb_get_phy_by_phandle (struct device*,char*,int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 struct xhci_plat_priv* hcd_to_xhci_priv (struct usb_hcd*) ;
 scalar_t__ is_acpi_device_node (int ) ;
 scalar_t__ is_of_node (int ) ;
 struct xhci_plat_priv* of_device_get_match_data (struct device*) ;
 int of_usb_host_tpl_support (int ) ;
 int pci_bus_type ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int resource_size (struct resource*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 scalar_t__ usb_disabled () ;
 int usb_phy_init (int *) ;
 int usb_phy_shutdown (int *) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 struct hc_driver xhci_plat_hc_driver ;

__attribute__((used)) static int xhci_plat_probe(struct platform_device *pdev)
{
 const struct xhci_plat_priv *priv_match;
 const struct hc_driver *driver;
 struct device *sysdev, *tmpdev;
 struct xhci_hcd *xhci;
 struct resource *res;
 struct usb_hcd *hcd;
 int ret;
 int irq;

 if (usb_disabled())
  return -ENODEV;

 driver = &xhci_plat_hc_driver;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 for (sysdev = &pdev->dev; sysdev; sysdev = sysdev->parent) {
  if (is_of_node(sysdev->fwnode) ||
   is_acpi_device_node(sysdev->fwnode))
   break;




 }

 if (!sysdev)
  sysdev = &pdev->dev;


 if (WARN_ON(!sysdev->dma_mask))

  ret = dma_coerce_mask_and_coherent(sysdev,
         DMA_BIT_MASK(64));
 else
  ret = dma_set_mask_and_coherent(sysdev, DMA_BIT_MASK(64));


 if (ret) {
  ret = dma_set_mask_and_coherent(sysdev, DMA_BIT_MASK(32));
  if (ret)
   return ret;
 }

 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_noresume(&pdev->dev);

 hcd = __usb_create_hcd(driver, sysdev, &pdev->dev,
          dev_name(&pdev->dev), ((void*)0));
 if (!hcd) {
  ret = -ENOMEM;
  goto disable_runtime;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hcd->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hcd->regs)) {
  ret = PTR_ERR(hcd->regs);
  goto put_hcd;
 }

 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 xhci = hcd_to_xhci(hcd);





 xhci->reg_clk = devm_clk_get_optional(&pdev->dev, "reg");
 if (IS_ERR(xhci->reg_clk)) {
  ret = PTR_ERR(xhci->reg_clk);
  goto put_hcd;
 }

 ret = clk_prepare_enable(xhci->reg_clk);
 if (ret)
  goto put_hcd;

 xhci->clk = devm_clk_get_optional(&pdev->dev, ((void*)0));
 if (IS_ERR(xhci->clk)) {
  ret = PTR_ERR(xhci->clk);
  goto disable_reg_clk;
 }

 ret = clk_prepare_enable(xhci->clk);
 if (ret)
  goto disable_reg_clk;

 priv_match = of_device_get_match_data(&pdev->dev);
 if (priv_match) {
  struct xhci_plat_priv *priv = hcd_to_xhci_priv(hcd);


  if (priv_match)
   *priv = *priv_match;
 }

 device_wakeup_enable(hcd->self.controller);

 xhci->main_hcd = hcd;
 xhci->shared_hcd = __usb_create_hcd(driver, sysdev, &pdev->dev,
   dev_name(&pdev->dev), hcd);
 if (!xhci->shared_hcd) {
  ret = -ENOMEM;
  goto disable_clk;
 }


 xhci->imod_interval = 40000;


 for (tmpdev = &pdev->dev; tmpdev; tmpdev = tmpdev->parent) {

  if (device_property_read_bool(tmpdev, "usb2-lpm-disable"))
   xhci->quirks |= XHCI_HW_LPM_DISABLE;

  if (device_property_read_bool(tmpdev, "usb3-lpm-capable"))
   xhci->quirks |= XHCI_LPM_SUPPORT;

  if (device_property_read_bool(tmpdev, "quirk-broken-port-ped"))
   xhci->quirks |= XHCI_BROKEN_PORT_PED;

  device_property_read_u32(tmpdev, "imod-interval-ns",
      &xhci->imod_interval);
 }

 hcd->usb_phy = devm_usb_get_phy_by_phandle(sysdev, "usb-phy", 0);
 if (IS_ERR(hcd->usb_phy)) {
  ret = PTR_ERR(hcd->usb_phy);
  if (ret == -EPROBE_DEFER)
   goto put_usb3_hcd;
  hcd->usb_phy = ((void*)0);
 } else {
  ret = usb_phy_init(hcd->usb_phy);
  if (ret)
   goto put_usb3_hcd;
 }

 hcd->tpl_support = of_usb_host_tpl_support(sysdev->of_node);
 xhci->shared_hcd->tpl_support = hcd->tpl_support;
 ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (ret)
  goto disable_usb_phy;

 if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
  xhci->shared_hcd->can_do_streams = 1;

 ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
 if (ret)
  goto dealloc_usb2_hcd;

 device_enable_async_suspend(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);





 pm_runtime_forbid(&pdev->dev);

 return 0;


dealloc_usb2_hcd:
 usb_remove_hcd(hcd);

disable_usb_phy:
 usb_phy_shutdown(hcd->usb_phy);

put_usb3_hcd:
 usb_put_hcd(xhci->shared_hcd);

disable_clk:
 clk_disable_unprepare(xhci->clk);

disable_reg_clk:
 clk_disable_unprepare(xhci->reg_clk);

put_hcd:
 usb_put_hcd(hcd);

disable_runtime:
 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return ret;
}
