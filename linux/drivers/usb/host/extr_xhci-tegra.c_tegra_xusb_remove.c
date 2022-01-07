
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xhci_hcd {int * shared_hcd; } ;
struct TYPE_6__ {int phys; int virt; int size; } ;
struct tegra_xusb {int padctl; TYPE_1__ fw; int * hcd; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int TEGRA_POWERGATE_XUSBA ;
 int TEGRA_POWERGATE_XUSBC ;
 int dma_free_coherent (TYPE_2__*,int ,int ,int ) ;
 struct xhci_hcd* hcd_to_xhci (int *) ;
 int of_property_read_bool (int ,char*) ;
 struct tegra_xusb* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_put_sync (TYPE_2__*) ;
 int tegra_powergate_power_off (int ) ;
 int tegra_xusb_padctl_put (int ) ;
 int tegra_xusb_powerdomain_remove (TYPE_2__*,struct tegra_xusb*) ;
 int usb_put_hcd (int *) ;
 int usb_remove_hcd (int *) ;

__attribute__((used)) static int tegra_xusb_remove(struct platform_device *pdev)
{
 struct tegra_xusb *tegra = platform_get_drvdata(pdev);
 struct xhci_hcd *xhci = hcd_to_xhci(tegra->hcd);

 usb_remove_hcd(xhci->shared_hcd);
 usb_put_hcd(xhci->shared_hcd);
 xhci->shared_hcd = ((void*)0);
 usb_remove_hcd(tegra->hcd);
 usb_put_hcd(tegra->hcd);

 dma_free_coherent(&pdev->dev, tegra->fw.size, tegra->fw.virt,
     tegra->fw.phys);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 if (!of_property_read_bool(pdev->dev.of_node, "power-domains")) {
  tegra_powergate_power_off(TEGRA_POWERGATE_XUSBC);
  tegra_powergate_power_off(TEGRA_POWERGATE_XUSBA);
 } else {
  tegra_xusb_powerdomain_remove(&pdev->dev, tegra);
 }

 tegra_xusb_padctl_put(tegra->padctl);

 return 0;
}
