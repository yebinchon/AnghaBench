
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int aer_cap; } ;
struct aer_rpc {struct pci_dev* rpd; } ;


 scalar_t__ PCI_ERR_ROOT_COMMAND ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 int ROOT_PORT_INTR_ON_MESG_MASK ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;
 int set_downstream_devices_error_reporting (struct pci_dev*,int) ;

__attribute__((used)) static void aer_disable_rootport(struct aer_rpc *rpc)
{
 struct pci_dev *pdev = rpc->rpd;
 u32 reg32;
 int pos;





 set_downstream_devices_error_reporting(pdev, 0);

 pos = pdev->aer_cap;

 pci_read_config_dword(pdev, pos + PCI_ERR_ROOT_COMMAND, &reg32);
 reg32 &= ~ROOT_PORT_INTR_ON_MESG_MASK;
 pci_write_config_dword(pdev, pos + PCI_ERR_ROOT_COMMAND, reg32);


 pci_read_config_dword(pdev, pos + PCI_ERR_ROOT_STATUS, &reg32);
 pci_write_config_dword(pdev, pos + PCI_ERR_ROOT_STATUS, reg32);
}
