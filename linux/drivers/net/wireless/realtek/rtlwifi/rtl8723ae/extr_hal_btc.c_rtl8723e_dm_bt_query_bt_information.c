
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int c2h_bt_info_req_sent; } ;


 int BIT (int ) ;
 int COMP_BT_COEXIST ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 TYPE_1__ hal_coex_8723 ;
 int rtl8723e_fill_h2c_cmd (struct ieee80211_hw*,int,int,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_bt_query_bt_information(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 h2c_parameter[1] = {0};

 hal_coex_8723.c2h_bt_info_req_sent = 1;

 h2c_parameter[0] |= BIT(0);

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
  "Query Bt information, write 0x38=0x%x\n", h2c_parameter[0]);

 rtl8723e_fill_h2c_cmd(hw, 0x38, 1, h2c_parameter);
}
