
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct usb_phy {TYPE_2__* otg; } ;
struct usb_otg {int dummy; } ;
struct TYPE_16__ {int controller; } ;
struct usb_hcd {int has_tt; int skip_phy_initialization; struct usb_phy* usb_phy; TYPE_3__ self; struct usb_phy* regs; int rsrc_len; int rsrc_start; } ;
struct tegra_ehci_soc_config {int has_hostpc; } ;
struct tegra_ehci_hcd {struct usb_phy* clk; int needs_double_reset; struct usb_phy* rst; } ;
struct resource {int start; } ;
struct TYPE_14__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct tegra_ehci_soc_config* data; } ;
struct ehci_hcd {int has_hostpc; struct usb_phy* caps; scalar_t__ priv; } ;
struct TYPE_15__ {int host; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct usb_phy*) ;
 int PTR_ERR (struct usb_phy*) ;
 int clk_disable_unprepare (struct usb_phy*) ;
 int clk_prepare_enable (struct usb_phy*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int device_wakeup_enable (int ) ;
 struct usb_phy* devm_clk_get (TYPE_1__*,int *) ;
 struct usb_phy* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 TYPE_2__* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct usb_phy* devm_reset_control_get_shared (TYPE_1__*,char*) ;
 struct usb_phy* devm_usb_get_phy_by_phandle (TYPE_1__*,char*,int ) ;
 int dma_coerce_mask_and_coherent (TYPE_1__*,int ) ;
 int hcd_to_bus (struct usb_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_property_read_bool (int ,char*) ;
 int otg_set_host (TYPE_2__*,TYPE_3__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct usb_hcd*) ;
 int resource_size (struct resource*) ;
 int tegra_ehci_hc_driver ;
 int tegra_ehci_of_match ;
 int tegra_reset_usb_controller (struct platform_device*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (int *,TYPE_1__*,int ) ;
 int usb_phy_init (struct usb_phy*) ;
 int usb_phy_set_suspend (struct usb_phy*,int ) ;
 int usb_phy_shutdown (struct usb_phy*) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int tegra_ehci_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 const struct tegra_ehci_soc_config *soc_config;
 struct resource *res;
 struct usb_hcd *hcd;
 struct ehci_hcd *ehci;
 struct tegra_ehci_hcd *tegra;
 int err = 0;
 int irq;
 struct usb_phy *u_phy;

 match = of_match_device(tegra_ehci_of_match, &pdev->dev);
 if (!match) {
  dev_err(&pdev->dev, "Error: No device match found\n");
  return -ENODEV;
 }
 soc_config = match->data;





 err = dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (err)
  return err;

 hcd = usb_create_hcd(&tegra_ehci_hc_driver, &pdev->dev,
     dev_name(&pdev->dev));
 if (!hcd) {
  dev_err(&pdev->dev, "Unable to create HCD\n");
  return -ENOMEM;
 }
 platform_set_drvdata(pdev, hcd);
 ehci = hcd_to_ehci(hcd);
 tegra = (struct tegra_ehci_hcd *)ehci->priv;

 hcd->has_tt = 1;

 tegra->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(tegra->clk)) {
  dev_err(&pdev->dev, "Can't get ehci clock\n");
  err = PTR_ERR(tegra->clk);
  goto cleanup_hcd_create;
 }

 tegra->rst = devm_reset_control_get_shared(&pdev->dev, "usb");
 if (IS_ERR(tegra->rst)) {
  dev_err(&pdev->dev, "Can't get ehci reset\n");
  err = PTR_ERR(tegra->rst);
  goto cleanup_hcd_create;
 }

 err = clk_prepare_enable(tegra->clk);
 if (err)
  goto cleanup_hcd_create;

 err = tegra_reset_usb_controller(pdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to reset controller\n");
  goto cleanup_clk_en;
 }

 u_phy = devm_usb_get_phy_by_phandle(&pdev->dev, "nvidia,phy", 0);
 if (IS_ERR(u_phy)) {
  err = -EPROBE_DEFER;
  goto cleanup_clk_en;
 }
 hcd->usb_phy = u_phy;
 hcd->skip_phy_initialization = 1;

 tegra->needs_double_reset = of_property_read_bool(pdev->dev.of_node,
  "nvidia,needs-double-reset");

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hcd->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hcd->regs)) {
  err = PTR_ERR(hcd->regs);
  goto cleanup_clk_en;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 ehci->caps = hcd->regs + 0x100;
 ehci->has_hostpc = soc_config->has_hostpc;

 err = usb_phy_init(hcd->usb_phy);
 if (err) {
  dev_err(&pdev->dev, "Failed to initialize phy\n");
  goto cleanup_clk_en;
 }

 u_phy->otg = devm_kzalloc(&pdev->dev, sizeof(struct usb_otg),
        GFP_KERNEL);
 if (!u_phy->otg) {
  err = -ENOMEM;
  goto cleanup_phy;
 }
 u_phy->otg->host = hcd_to_bus(hcd);

 err = usb_phy_set_suspend(hcd->usb_phy, 0);
 if (err) {
  dev_err(&pdev->dev, "Failed to power on the phy\n");
  goto cleanup_phy;
 }

 irq = platform_get_irq(pdev, 0);
 if (!irq) {
  dev_err(&pdev->dev, "Failed to get IRQ\n");
  err = -ENODEV;
  goto cleanup_phy;
 }

 otg_set_host(u_phy->otg, &hcd->self);

 err = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (err) {
  dev_err(&pdev->dev, "Failed to add USB HCD\n");
  goto cleanup_otg_set_host;
 }
 device_wakeup_enable(hcd->self.controller);

 return err;

cleanup_otg_set_host:
 otg_set_host(u_phy->otg, ((void*)0));
cleanup_phy:
 usb_phy_shutdown(hcd->usb_phy);
cleanup_clk_en:
 clk_disable_unprepare(tegra->clk);
cleanup_hcd_create:
 usb_put_hcd(hcd);
 return err;
}
