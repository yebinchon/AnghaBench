
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct rtl_priv {int dummy; } ;
struct TYPE_2__ {int linkctrl_reg; } ;
struct rtl_pci_priv {TYPE_1__ ndis_adapter; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_TRACE ;
 int PCI_EXP_LNKCTL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pcie_capability_read_word (struct pci_dev*,int ,scalar_t__*) ;
 struct rtl_pci_priv* rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_pci_parse_configuration(struct pci_dev *pdev,
     struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci_priv *pcipriv = rtl_pcipriv(hw);

 u8 tmp;
 u16 linkctrl_reg;


 pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &linkctrl_reg);
 pcipriv->ndis_adapter.linkctrl_reg = (u8)linkctrl_reg;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Link Control Register =%x\n",
   pcipriv->ndis_adapter.linkctrl_reg);

 pci_read_config_byte(pdev, 0x98, &tmp);
 tmp |= BIT(4);
 pci_write_config_byte(pdev, 0x98, tmp);

 tmp = 0x17;
 pci_write_config_byte(pdev, 0x70f, tmp);
}
