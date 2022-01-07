
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct r8192_priv {int pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int BIT4 ;
 int COMP_INIT ;
 int PCI_EXP_LNKCTL ;
 int RT_TRACE (int ,char*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pcie_capability_read_word (int ,int ,int *) ;
 scalar_t__ rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_parse_pci_configuration(struct pci_dev *pdev,
         struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);

 u8 tmp;
 u16 LinkCtrlReg;

 pcie_capability_read_word(priv->pdev, PCI_EXP_LNKCTL, &LinkCtrlReg);

 RT_TRACE(COMP_INIT, "Link Control Register =%x\n", LinkCtrlReg);

 pci_read_config_byte(pdev, 0x98, &tmp);
 tmp |= BIT4;
 pci_write_config_byte(pdev, 0x98, tmp);

 tmp = 0x17;
 pci_write_config_byte(pdev, 0x70f, tmp);
}
