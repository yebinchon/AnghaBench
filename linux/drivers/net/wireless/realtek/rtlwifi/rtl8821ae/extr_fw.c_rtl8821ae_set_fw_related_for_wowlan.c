
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ps_ctl {int fw_current_inpsmode; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int fw_ready; int fw_clk_change_in_progress; int allow_sw_to_change_hwclc; scalar_t__ last_hmeboxnum; int fw_ps_state; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_DMESG ;
 int FW_PS_STATE_ALL_ON_8821AE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 scalar_t__ rtl8821ae_download_fw (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

void rtl8821ae_set_fw_related_for_wowlan(struct ieee80211_hw *hw,
      bool used_wowlan_fw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));

 if (rtl8821ae_download_fw(hw, used_wowlan_fw)) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
    "Re-Download Firmware failed!!\n");
  rtlhal->fw_ready = 0;
  return;
 }
 RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
   "Re-Download Firmware Success !!\n");
 rtlhal->fw_ready = 1;


 ppsc->fw_current_inpsmode = 0;
 rtlhal->fw_ps_state = FW_PS_STATE_ALL_ON_8821AE;
 rtlhal->fw_clk_change_in_progress = 0;
 rtlhal->allow_sw_to_change_hwclc = 0;
 rtlhal->last_hmeboxnum = 0;
}
