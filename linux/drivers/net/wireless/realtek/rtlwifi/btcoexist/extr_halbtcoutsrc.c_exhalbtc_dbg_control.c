
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cnt_dbg_ctrl; } ;
struct btc_coexist {TYPE_1__ statistics; } ;


 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;

void exhalbtc_dbg_control(struct btc_coexist *btcoexist,
     u8 code, u8 len, u8 *data)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;
 btcoexist->statistics.cnt_dbg_ctrl++;

 halbtc_leave_low_power(btcoexist);

 halbtc_normal_low_power(btcoexist);
}
