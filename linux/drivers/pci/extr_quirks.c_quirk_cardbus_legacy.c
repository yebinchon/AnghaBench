
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_CB_LEGACY_MODE_BASE ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void quirk_cardbus_legacy(struct pci_dev *dev)
{
 pci_write_config_dword(dev, PCI_CB_LEGACY_MODE_BASE, 0);
}
