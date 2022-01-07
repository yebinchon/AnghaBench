
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;


 int PCI_DEVICE_ID ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_byte (struct pci_dev*,int,int ) ;

__attribute__((used)) static void quirk_vt82c598_id(struct pci_dev *dev)
{
 pci_write_config_byte(dev, 0xfc, 0);
 pci_read_config_word(dev, PCI_DEVICE_ID, &dev->device);
}
