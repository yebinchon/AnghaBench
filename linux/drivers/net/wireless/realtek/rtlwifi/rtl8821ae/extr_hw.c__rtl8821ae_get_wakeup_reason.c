
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_ps_ctl {scalar_t__ wakeup_reason; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int last_suspend_sec; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int REG_MCUTST_WOWLAN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ WOL_REASON_AP_LOST ;
 scalar_t__ WOL_REASON_DEAUTH ;
 scalar_t__ WOL_REASON_DISASSOC ;
 scalar_t__ WOL_REASON_GTK_UPDATE ;
 scalar_t__ WOL_REASON_MAGIC_PKT ;
 scalar_t__ WOL_REASON_PATTERN_PKT ;
 scalar_t__ WOL_REASON_PTK_UPDATE ;
 scalar_t__ WOL_REASON_REALWOW_V2_ACKLOST ;
 scalar_t__ WOL_REASON_REALWOW_V2_WAKEUPPKT ;
 scalar_t__ WOL_REASON_RTD3_SSID_MATCH ;
 scalar_t__ WOL_REASON_UNICAST_PKT ;
 int ktime_get_real_seconds () ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;

__attribute__((used)) static void _rtl8821ae_get_wakeup_reason(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtlpriv);
 u8 fw_reason = 0;

 fw_reason = rtl_read_byte(rtlpriv, REG_MCUTST_WOWLAN);

 RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "WOL Read 0x1c7 = %02X\n",
   fw_reason);

 ppsc->wakeup_reason = 0;

 rtlhal->last_suspend_sec = ktime_get_real_seconds();

 switch (fw_reason) {
 case 132:
  ppsc->wakeup_reason = WOL_REASON_PTK_UPDATE;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a WOL PTK Key update event!\n");
  break;
 case 135:
  ppsc->wakeup_reason = WOL_REASON_GTK_UPDATE;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a WOL GTK Key update event!\n");
  break;
 case 137:
  ppsc->wakeup_reason = WOL_REASON_DISASSOC;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a disassociation event!\n");
  break;
 case 138:
  ppsc->wakeup_reason = WOL_REASON_DEAUTH;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a deauth event!\n");
  break;
 case 136:
  ppsc->wakeup_reason = WOL_REASON_AP_LOST;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a Fw disconnect decision (AP lost) event!\n");
 break;
 case 134:
  ppsc->wakeup_reason = WOL_REASON_MAGIC_PKT;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a magic packet event!\n");
  break;
 case 128:
  ppsc->wakeup_reason = WOL_REASON_UNICAST_PKT;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's an unicast packet event!\n");
  break;
 case 133:
  ppsc->wakeup_reason = WOL_REASON_PATTERN_PKT;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's a pattern match event!\n");
  break;
 case 129:
  ppsc->wakeup_reason = WOL_REASON_RTD3_SSID_MATCH;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's an RTD3 Ssid match event!\n");
  break;
 case 130:
  ppsc->wakeup_reason = WOL_REASON_REALWOW_V2_WAKEUPPKT;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's an RealWoW wake packet event!\n");
  break;
 case 131:
  ppsc->wakeup_reason = WOL_REASON_REALWOW_V2_ACKLOST;
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "It's an RealWoW ack lost event!\n");
  break;
 default:
  RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
    "WOL Read 0x1c7 = %02X, Unknown reason!\n",
     fw_reason);
  break;
 }
}
