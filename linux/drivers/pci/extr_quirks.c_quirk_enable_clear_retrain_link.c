
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int clear_retrain_link; } ;


 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_enable_clear_retrain_link(struct pci_dev *dev)
{
 dev->clear_retrain_link = 1;
 pci_info(dev, "Enable PCIe Retrain Link quirk\n");
}
