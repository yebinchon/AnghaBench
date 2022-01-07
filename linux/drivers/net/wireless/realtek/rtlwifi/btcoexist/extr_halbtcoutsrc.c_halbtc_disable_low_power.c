
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bt_disable_low_pwr; } ;
struct btc_coexist {TYPE_1__ bt_info; } ;



__attribute__((used)) static void halbtc_disable_low_power(struct btc_coexist *btcoexist,
         bool low_pwr_disable)
{

 btcoexist->bt_info.bt_disable_low_pwr = low_pwr_disable;
}
