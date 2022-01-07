
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int* irq_mask; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INTR ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int rtl8723be_disable_interrupt (struct ieee80211_hw*) ;
 int rtl8723be_enable_interrupt (struct ieee80211_hw*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723be_update_interrupt_mask(struct ieee80211_hw *hw,
       u32 add_msr, u32 rm_msr)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 RT_TRACE(rtlpriv, COMP_INTR, DBG_LOUD,
   "add_msr:%x, rm_msr:%x\n", add_msr, rm_msr);

 if (add_msr)
  rtlpci->irq_mask[0] |= add_msr;
 if (rm_msr)
  rtlpci->irq_mask[0] &= (~rm_msr);
 rtl8723be_disable_interrupt(hw);
 rtl8723be_enable_interrupt(hw);
}
