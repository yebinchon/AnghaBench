
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ASMT_CONTROL_REG ;
 int ASMT_CONTROL_WRITE_BIT ;
 int ASMT_DATA_WRITE0_REG ;
 int ASMT_DATA_WRITE1_REG ;
 int ASMT_FLOWCTL_ADDR ;
 int ASMT_FLOWCTL_DATA ;
 int ASMT_PSEUDO_DATA ;
 int ASMT_WRITEREG_CMD ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 scalar_t__ usb_asmedia_wait_write (struct pci_dev*) ;

void usb_asmedia_modifyflowcontrol(struct pci_dev *pdev)
{
 if (usb_asmedia_wait_write(pdev) != 0)
  return;


 pci_write_config_dword(pdev, ASMT_DATA_WRITE0_REG, ASMT_WRITEREG_CMD);
 pci_write_config_dword(pdev, ASMT_DATA_WRITE1_REG, ASMT_FLOWCTL_ADDR);
 pci_write_config_byte(pdev, ASMT_CONTROL_REG, ASMT_CONTROL_WRITE_BIT);

 if (usb_asmedia_wait_write(pdev) != 0)
  return;


 pci_write_config_dword(pdev, ASMT_DATA_WRITE0_REG, ASMT_FLOWCTL_DATA);
 pci_write_config_dword(pdev, ASMT_DATA_WRITE1_REG, ASMT_PSEUDO_DATA);
 pci_write_config_byte(pdev, ASMT_CONTROL_REG, ASMT_CONTROL_WRITE_BIT);
}
