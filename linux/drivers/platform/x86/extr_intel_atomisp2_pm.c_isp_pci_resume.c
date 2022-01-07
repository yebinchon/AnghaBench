
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int current_state; } ;
struct device {int dummy; } ;


 int PCI_D0 ;
 int isp_set_power (struct pci_dev*,int) ;
 int pci_restore_state (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int isp_pci_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);

 isp_set_power(pdev, 1);
 pdev->current_state = PCI_D0;
 pci_restore_state(pdev);

 return 0;
}
