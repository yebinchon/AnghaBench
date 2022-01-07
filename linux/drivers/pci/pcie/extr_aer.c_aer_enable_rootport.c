
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int aer_cap; } ;
struct aer_rpc {struct pci_dev* rpd; } ;


 scalar_t__ PCI_ERR_COR_STATUS ;
 scalar_t__ PCI_ERR_ROOT_COMMAND ;
 scalar_t__ PCI_ERR_ROOT_STATUS ;
 scalar_t__ PCI_ERR_UNCOR_STATUS ;
 int PCI_EXP_DEVSTA ;
 int PCI_EXP_RTCTL ;
 int ROOT_PORT_INTR_ON_MESG_MASK ;
 int SYSTEM_ERROR_INTR_ON_MESG_MASK ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int ) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int *) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int ) ;
 int set_downstream_devices_error_reporting (struct pci_dev*,int) ;

__attribute__((used)) static void aer_enable_rootport(struct aer_rpc *rpc)
{
 struct pci_dev *pdev = rpc->rpd;
 int aer_pos;
 u16 reg16;
 u32 reg32;


 pcie_capability_read_word(pdev, PCI_EXP_DEVSTA, &reg16);
 pcie_capability_write_word(pdev, PCI_EXP_DEVSTA, reg16);


 pcie_capability_clear_word(pdev, PCI_EXP_RTCTL,
       SYSTEM_ERROR_INTR_ON_MESG_MASK);

 aer_pos = pdev->aer_cap;

 pci_read_config_dword(pdev, aer_pos + PCI_ERR_ROOT_STATUS, &reg32);
 pci_write_config_dword(pdev, aer_pos + PCI_ERR_ROOT_STATUS, reg32);
 pci_read_config_dword(pdev, aer_pos + PCI_ERR_COR_STATUS, &reg32);
 pci_write_config_dword(pdev, aer_pos + PCI_ERR_COR_STATUS, reg32);
 pci_read_config_dword(pdev, aer_pos + PCI_ERR_UNCOR_STATUS, &reg32);
 pci_write_config_dword(pdev, aer_pos + PCI_ERR_UNCOR_STATUS, reg32);





 set_downstream_devices_error_reporting(pdev, 1);


 pci_read_config_dword(pdev, aer_pos + PCI_ERR_ROOT_COMMAND, &reg32);
 reg32 |= ROOT_PORT_INTR_ON_MESG_MASK;
 pci_write_config_dword(pdev, aer_pos + PCI_ERR_ROOT_COMMAND, reg32);
}
