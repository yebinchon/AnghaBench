
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btc_coexist {int dummy; } ;


 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;

void exhalbtc_antenna_detection(struct btc_coexist *btcoexist, u32 cent_freq,
    u32 offset, u32 span, u32 seconds)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;
}
