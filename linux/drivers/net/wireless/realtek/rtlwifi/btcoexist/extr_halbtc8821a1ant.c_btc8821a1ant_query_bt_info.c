
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int *) ;struct rtl_priv* adapter; } ;
struct TYPE_2__ {int c2h_bt_info_req_sent; } ;


 int BIT0 ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static void btc8821a1ant_query_bt_info(struct btc_coexist *btcoexist)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 h2c_parameter[1] = {0};

 coex_sta->c2h_bt_info_req_sent = 1;

 h2c_parameter[0] |= BIT0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], Query Bt Info, FW write 0x61 = 0x%x\n",
   h2c_parameter[0]);

 btcoexist->btc_fill_h2c(btcoexist, 0x61, 1, h2c_parameter);
}
