
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int pcibridge_pciehdr_offset; int pcibridge_linkctrlreg; } ;
struct rtl_pci_priv {TYPE_1__ ndis_adapter; } ;
struct rtl_pci {int pdev; } ;
struct ieee80211_hw {int dummy; } ;


 int pci_read_config_byte (int ,int,int*) ;
 struct rtl_pci* rtl_pcidev (struct rtl_pci_priv*) ;
 struct rtl_pci_priv* rtl_pcipriv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_pci_get_linkcontrol_field(struct ieee80211_hw *hw)
{
 struct rtl_pci_priv *pcipriv = rtl_pcipriv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(pcipriv);
 u8 capabilityoffset = pcipriv->ndis_adapter.pcibridge_pciehdr_offset;
 u8 linkctrl_reg;
 u8 num4bbytes;

 num4bbytes = (capabilityoffset + 0x10) / 4;


 pci_read_config_byte(rtlpci->pdev, (num4bbytes << 2), &linkctrl_reg);

 pcipriv->ndis_adapter.pcibridge_linkctrlreg = linkctrl_reg;
}
