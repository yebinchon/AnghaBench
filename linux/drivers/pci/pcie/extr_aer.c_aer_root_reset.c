
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int aer_cap; } ;
typedef int pci_ers_result_t ;


 scalar_t__ PCI_ERR_ROOT_COMMAND ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int ROOT_PORT_INTR_ON_MESG_MASK ;
 int pci_bus_error_reset (struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static pci_ers_result_t aer_root_reset(struct pci_dev *dev)
{
 u32 reg32;
 int pos;
 int rc;

 pos = dev->aer_cap;


 pci_read_config_dword(dev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
 reg32 &= ~ROOT_PORT_INTR_ON_MESG_MASK;
 pci_write_config_dword(dev, pos + PCI_ERR_ROOT_COMMAND, reg32);

 rc = pci_bus_error_reset(dev);
 pci_info(dev, "Root Port link has been reset\n");


 pci_read_config_dword(dev, pos + PCI_ERR_ROOT_STATUS, &reg32);
 pci_write_config_dword(dev, pos + PCI_ERR_ROOT_STATUS, reg32);


 pci_read_config_dword(dev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
 reg32 |= ROOT_PORT_INTR_ON_MESG_MASK;
 pci_write_config_dword(dev, pos + PCI_ERR_ROOT_COMMAND, reg32);

 return rc ? PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_RECOVERED;
}
