
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int *) ;} ;
struct TYPE_2__ {int c2h_bt_info_req_sent; } ;


 int BIT (int ) ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static void halbtc8723b1ant_query_bt_info(struct btc_coexist *btcoexist)
{
 u8 h2c_parameter[1] = {0};

 coex_sta->c2h_bt_info_req_sent = 1;


 h2c_parameter[0] |= BIT(0);

 btcoexist->btc_fill_h2c(btcoexist, 0x61, 1, h2c_parameter);
}
