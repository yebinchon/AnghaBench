
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_bt_rssi; } ;
struct btc_coexist {TYPE_1__ stack_info; } ;
typedef int s8 ;


 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;

void exhalbtc_update_min_bt_rssi(struct btc_coexist *btcoexist, s8 bt_rssi)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 btcoexist->stack_info.min_bt_rssi = bt_rssi;
}
