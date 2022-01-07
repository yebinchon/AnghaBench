
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct intel_ntb_dev {int self_mmio; int peer_mmio; TYPE_1__ ntb; } ;


 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void intel_ntb_deinit_pci(struct intel_ntb_dev *ndev)
{
 struct pci_dev *pdev = ndev->ntb.pdev;

 if (ndev->peer_mmio && ndev->peer_mmio != ndev->self_mmio)
  pci_iounmap(pdev, ndev->peer_mmio);
 pci_iounmap(pdev, ndev->self_mmio);

 pci_clear_master(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
