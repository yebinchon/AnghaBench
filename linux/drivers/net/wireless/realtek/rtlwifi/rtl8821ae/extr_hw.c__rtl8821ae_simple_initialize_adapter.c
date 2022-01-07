
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_ps_ctl {int rfpwr_state; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int re_init_llt_table; scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;


 int ERFON ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 scalar_t__ _rtl8821ae_dynamic_rqpn (struct ieee80211_hw*,int,int,int) ;
 int rtl8821ae_set_fw_related_for_wowlan (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

__attribute__((used)) static void _rtl8821ae_simple_initialize_adapter(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtlpriv);







 if (rtlhal->re_init_llt_table) {
  u32 rqpn = 0x80e70808;
  u8 rqpn_npq = 0, boundary = 0xF8;
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
   rqpn = 0x80e90808;
   boundary = 0xFA;
  }
  if (_rtl8821ae_dynamic_rqpn(hw, boundary, rqpn_npq, rqpn))
   rtlhal->re_init_llt_table = 0;
 }

 ppsc->rfpwr_state = ERFON;
}
