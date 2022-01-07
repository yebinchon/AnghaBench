
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 int ASYN_INT_MODE ;
 int BAD_VCC_REQ_DISB ;
 int BRGCNT ;
 int CHIPCNT ;
 int CH_ASSIGN_MASK ;
 int CH_ASSIGN_NODMA ;
 int DEVCNT ;
 int IFG ;
 int IREQ_INT ;
 int IRQ_MODE ;
 int PCI_CLK_RIN ;
 int PCI_INT_MODE ;
 int PCPCI_EN ;
 int SERRDIS ;
 int SR_PCI_INT_SEL_MASK ;
 int SR_PCI_INT_SEL_NONE ;
 int SUB_ID_WR_EN ;
 int SYSCNT ;
 int S_PREF_DISB ;
 int ZOOM_VIDEO_EN ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void cardu_pciregs_init(struct pci_dev *dev)
{
 u32 syscnt;
 u16 brgcnt;
 u8 devcnt;

 pci_write_config_dword(dev, 0x1c, 0x10000000);
 pci_write_config_dword(dev, 0x20, 0x17fff000);
 pci_write_config_dword(dev, 0x2c, 0);
 pci_write_config_dword(dev, 0x30, 0xfffc);

 pci_read_config_word(dev, BRGCNT, &brgcnt);
 brgcnt &= ~IREQ_INT;
 pci_write_config_word(dev, BRGCNT, brgcnt);

 pci_read_config_dword(dev, SYSCNT, &syscnt);
 syscnt &= ~(BAD_VCC_REQ_DISB|PCPCI_EN|CH_ASSIGN_MASK|SUB_ID_WR_EN|PCI_CLK_RIN);
 syscnt |= (CH_ASSIGN_NODMA|ASYN_INT_MODE);
 pci_write_config_dword(dev, SYSCNT, syscnt);

 pci_read_config_byte(dev, DEVCNT, &devcnt);
 devcnt &= ~(ZOOM_VIDEO_EN|SR_PCI_INT_SEL_MASK|PCI_INT_MODE|IRQ_MODE);
 devcnt |= (SR_PCI_INT_SEL_NONE|IFG);
 pci_write_config_byte(dev, DEVCNT, devcnt);

 pci_write_config_byte(dev, CHIPCNT, S_PREF_DISB);

 pci_write_config_byte(dev, SERRDIS, 0);
}
