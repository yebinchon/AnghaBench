
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_pci {int* irq_mask; } ;
struct rtl_int {int inta; } ;
struct ieee80211_hw {int dummy; } ;


 int ISR ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

void rtl92de_interrupt_recognized(struct ieee80211_hw *hw,
      struct rtl_int *intvec)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 intvec->inta = rtl_read_dword(rtlpriv, ISR) & rtlpci->irq_mask[0];
 rtl_write_dword(rtlpriv, ISR, intvec->inta);
}
