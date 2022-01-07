
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int current_state; } ;
struct device {int dummy; } ;


 int PCI_CSI_CONTROL ;
 int PCI_CSI_CONTROL_PORTS_OFF_MASK ;
 int PCI_D3cold ;
 int PCI_INTERRUPT_CTRL ;
 int isp_set_power (struct pci_dev*,int) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int isp_pci_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 u32 val;

 pci_write_config_dword(pdev, PCI_INTERRUPT_CTRL, 0);






 pci_read_config_dword(pdev, PCI_CSI_CONTROL, &val);
 val |= PCI_CSI_CONTROL_PORTS_OFF_MASK;
 pci_write_config_dword(pdev, PCI_CSI_CONTROL, val);






 pci_save_state(pdev);
 pdev->current_state = PCI_D3cold;
 isp_set_power(pdev, 0);

 return 0;
}
