
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCIBIOS_SET_FAILED ;
 int PCI_VPD_ADDR_F ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static int vpd_address_write(struct pci_dev *dev, int offset, u16 value,
        void *data)
{

 if (value & PCI_VPD_ADDR_F)
  return PCIBIOS_SET_FAILED;
 else
  return pci_write_config_word(dev, offset, value);
}
