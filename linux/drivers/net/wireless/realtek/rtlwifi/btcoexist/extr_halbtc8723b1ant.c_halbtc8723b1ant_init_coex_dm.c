
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_coexist {int dummy; } ;
struct TYPE_2__ {scalar_t__ pop_event_cnt; } ;


 TYPE_1__* coex_sta ;
 int halbtc8723b1ant_sw_mechanism (struct btc_coexist*,int) ;

__attribute__((used)) static void halbtc8723b1ant_init_coex_dm(struct btc_coexist *btcoexist)
{

 halbtc8723b1ant_sw_mechanism(btcoexist, 0);

 coex_sta->pop_event_cnt = 0;
}
