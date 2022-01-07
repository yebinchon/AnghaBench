
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_bus_priv {int msi_enabled; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;


 int pci_enable_msi (struct pci_dev*) ;
 int pci_intx (struct pci_dev*,int) ;
 int pr_debug (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static void qtnf_pcie_init_irq(struct qtnf_pcie_bus_priv *priv, bool use_msi)
{
 struct pci_dev *pdev = priv->pdev;


 priv->msi_enabled = 0;


 if (use_msi) {
  if (!pci_enable_msi(pdev)) {
   pr_debug("enabled MSI interrupt\n");
   priv->msi_enabled = 1;
  } else {
   pr_warn("failed to enable MSI interrupts");
  }
 }

 if (!priv->msi_enabled) {
  pr_warn("legacy PCIE interrupts enabled\n");
  pci_intx(pdev, 1);
 }
}
