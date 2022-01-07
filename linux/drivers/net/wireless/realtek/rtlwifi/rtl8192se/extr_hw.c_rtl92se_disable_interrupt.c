
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int max_fw_size; } ;
struct rtl_pci {int irq_enabled; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ INTA_MASK ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int ) ;

void rtl92se_disable_interrupt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv;
 struct rtl_pci *rtlpci;

 rtlpriv = rtl_priv(hw);

 if (!rtlpriv || !rtlpriv->max_fw_size)
  return;
 rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 rtl_write_dword(rtlpriv, INTA_MASK, 0);
 rtl_write_dword(rtlpriv, INTA_MASK + 4, 0);
 rtlpci->irq_enabled = 0;
}
