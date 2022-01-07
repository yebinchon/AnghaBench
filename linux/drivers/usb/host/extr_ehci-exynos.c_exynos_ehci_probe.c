
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; int regs; int rsrc_len; int rsrc_start; } ;
struct resource {int start; } ;
struct TYPE_13__ {int * of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct exynos_ehci_hcd {int clk; int * of_node; scalar_t__ legacy_phy; } ;
struct ehci_hcd {int caps; } ;


 int DMA_BIT_MASK (int) ;
 int EHCI_INSNREG00 (int ) ;
 int EHCI_INSNREG00_ENABLE_DMA_BURST ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 int device_wakeup_enable (int ) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int dma_coerce_mask_and_coherent (TYPE_2__*,int ) ;
 int exynos_ehci_get_phy (TYPE_2__*,struct exynos_ehci_hcd*) ;
 int exynos_ehci_hc_driver ;
 int exynos_ehci_phy_disable (TYPE_2__*) ;
 int exynos_ehci_phy_enable (TYPE_2__*) ;
 int exynos_setup_vbus_gpio (TYPE_2__*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct usb_hcd*) ;
 int resource_size (struct resource*) ;
 struct exynos_ehci_hcd* to_exynos_ehci (struct usb_hcd*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (int *,TYPE_2__*,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int exynos_ehci_probe(struct platform_device *pdev)
{
 struct exynos_ehci_hcd *exynos_ehci;
 struct usb_hcd *hcd;
 struct ehci_hcd *ehci;
 struct resource *res;
 int irq;
 int err;






 err = dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (err)
  return err;

 exynos_setup_vbus_gpio(&pdev->dev);

 hcd = usb_create_hcd(&exynos_ehci_hc_driver,
        &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  dev_err(&pdev->dev, "Unable to create HCD\n");
  return -ENOMEM;
 }
 exynos_ehci = to_exynos_ehci(hcd);

 err = exynos_ehci_get_phy(&pdev->dev, exynos_ehci);
 if (err)
  goto fail_clk;

 exynos_ehci->clk = devm_clk_get(&pdev->dev, "usbhost");

 if (IS_ERR(exynos_ehci->clk)) {
  dev_err(&pdev->dev, "Failed to get usbhost clock\n");
  err = PTR_ERR(exynos_ehci->clk);
  goto fail_clk;
 }

 err = clk_prepare_enable(exynos_ehci->clk);
 if (err)
  goto fail_clk;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hcd->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hcd->regs)) {
  err = PTR_ERR(hcd->regs);
  goto fail_io;
 }

 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 irq = platform_get_irq(pdev, 0);
 if (!irq) {
  dev_err(&pdev->dev, "Failed to get IRQ\n");
  err = -ENODEV;
  goto fail_io;
 }

 err = exynos_ehci_phy_enable(&pdev->dev);
 if (err) {
  dev_err(&pdev->dev, "Failed to enable USB phy\n");
  goto fail_io;
 }

 ehci = hcd_to_ehci(hcd);
 ehci->caps = hcd->regs;





 exynos_ehci->of_node = pdev->dev.of_node;
 if (exynos_ehci->legacy_phy)
  pdev->dev.of_node = ((void*)0);


 writel(EHCI_INSNREG00_ENABLE_DMA_BURST, EHCI_INSNREG00(hcd->regs));

 err = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (err) {
  dev_err(&pdev->dev, "Failed to add USB HCD\n");
  goto fail_add_hcd;
 }
 device_wakeup_enable(hcd->self.controller);

 platform_set_drvdata(pdev, hcd);

 return 0;

fail_add_hcd:
 exynos_ehci_phy_disable(&pdev->dev);
 pdev->dev.of_node = exynos_ehci->of_node;
fail_io:
 clk_disable_unprepare(exynos_ehci->clk);
fail_clk:
 usb_put_hcd(hcd);
 return err;
}
