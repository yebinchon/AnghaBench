
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int bt_busy; int cstate; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int c2h_bt_info_req_sent; size_t bt_retry_cnt; size_t c2h_bt_info_original; int c2h_bt_inquiry_page; } ;


 size_t BIT (int) ;
 size_t BTINFO_B_CONNECTION ;
 int BT_COEX_STATE_BT_IDLE ;
 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 TYPE_2__ hal_coex_8723 ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_parse_bt_info(struct ieee80211_hw *hw,
      u8 *tmp_buf, u8 len)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 bt_info;
 u8 i;

 hal_coex_8723.c2h_bt_info_req_sent = 0;
 hal_coex_8723.bt_retry_cnt = 0;
 for (i = 0; i < len; i++) {
  if (i == 0)
   hal_coex_8723.c2h_bt_info_original = tmp_buf[i];
  else if (i == 1)
   hal_coex_8723.bt_retry_cnt = tmp_buf[i];
  if (i == len-1)
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
     "0x%2x]", tmp_buf[i]);
  else
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
     "0x%2x, ", tmp_buf[i]);

 }
 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
  "BT info bt_info (Data)= 0x%x\n",
   hal_coex_8723.c2h_bt_info_original);
 bt_info = hal_coex_8723.c2h_bt_info_original;

 if (bt_info & BIT(2))
  hal_coex_8723.c2h_bt_inquiry_page = 1;
 else
  hal_coex_8723.c2h_bt_inquiry_page = 0;


 if (bt_info & BTINFO_B_CONNECTION) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTC2H], BTInfo: bConnect=true\n");
  rtlpriv->btcoexist.bt_busy = 1;
  rtlpriv->btcoexist.cstate &= ~BT_COEX_STATE_BT_IDLE;
 } else {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
   "[BTC2H], BTInfo: bConnect=false\n");
  rtlpriv->btcoexist.bt_busy = 0;
  rtlpriv->btcoexist.cstate |= BT_COEX_STATE_BT_IDLE;
 }
}
