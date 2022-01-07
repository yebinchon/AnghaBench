
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_pci {int receive_config; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int COMP_TURBO ;
 int DBG_LOUD ;
 int RCR_AAP ;
 int REG_RCR ;
 int RT_TRACE (struct rtl_priv*,int,int ,char*,int ,int) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;

void rtl92ee_allow_all_destaddr(struct ieee80211_hw *hw,
    bool allow_all_da, bool write_into_reg)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));

 if (allow_all_da)
  rtlpci->receive_config |= RCR_AAP;
 else
  rtlpci->receive_config &= ~RCR_AAP;

 if (write_into_reg)
  rtl_write_dword(rtlpriv, REG_RCR, rtlpci->receive_config);

 RT_TRACE(rtlpriv, COMP_TURBO | COMP_INIT, DBG_LOUD,
   "receive_config=0x%08X, write_into_reg=%d\n",
    rtlpci->receive_config, write_into_reg);
}
