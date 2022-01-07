
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;


 int quirk_disable_root_port_attributes (struct pci_dev*) ;

__attribute__((used)) static void quirk_chelsio_T5_disable_root_port_attributes(struct pci_dev *pdev)
{






 if ((pdev->device & 0xff00) == 0x5400)
  quirk_disable_root_port_attributes(pdev);
}
