
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int global_dev ;
 int pci_disable_device (struct pci_dev*) ;
 int via_fb_pci_remove (struct pci_dev*) ;
 int via_pci_teardown_mmio (int *) ;
 int via_teardown_subdevs () ;

__attribute__((used)) static void via_pci_remove(struct pci_dev *pdev)
{
 via_teardown_subdevs();
 via_fb_pci_remove(pdev);
 via_pci_teardown_mmio(&global_dev);
 pci_disable_device(pdev);
}
