
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {scalar_t__ manual_control; } ;


 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;

void exhalbtc_switch_band_notify(struct btc_coexist *btcoexist, u8 type)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 if (btcoexist->manual_control)
  return;

 halbtc_leave_low_power(btcoexist);

 halbtc_normal_low_power(btcoexist);
}
