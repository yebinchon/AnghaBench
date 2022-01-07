
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct btc_coexist {int (* btc_set ) (struct btc_coexist*,int ,scalar_t__*) ;} ;
struct TYPE_2__ {scalar_t__ curra_mask; scalar_t__ prera_mask; } ;


 int BTC_SET_ACT_UPDATE_RAMASK ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int ,scalar_t__*) ;

__attribute__((used)) static void halbtc8723b1ant_updatera_mask(struct btc_coexist *btcoexist,
       bool force_exec, u32 dis_rate_mask)
{
 coex_dm->curra_mask = dis_rate_mask;

 if (force_exec || (coex_dm->prera_mask != coex_dm->curra_mask))
  btcoexist->btc_set(btcoexist, BTC_SET_ACT_UPDATE_RAMASK,
       &coex_dm->curra_mask);

 coex_dm->prera_mask = coex_dm->curra_mask;
}
