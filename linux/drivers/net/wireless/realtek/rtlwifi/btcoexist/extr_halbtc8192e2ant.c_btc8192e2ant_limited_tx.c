
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct btc_coexist {int dummy; } ;
struct TYPE_2__ {int cur_ss_type; int cur_ra_mask_type; } ;


 int btc8192e2ant_ampdu_maxtime (struct btc_coexist*,int,int ) ;
 int btc8192e2ant_auto_rate_fallback_retry (struct btc_coexist*,int,int ) ;
 int btc8192e2ant_decide_ra_mask (struct btc_coexist*,int ,int ) ;
 int btc8192e2ant_retry_limit (struct btc_coexist*,int,int ) ;
 int btc8192e2ant_update_ra_mask (struct btc_coexist*,int,int) ;
 TYPE_1__* coex_dm ;

__attribute__((used)) static void btc8192e2ant_limited_tx(struct btc_coexist *btcoexist,
        bool force_exec, u8 ra_mask_type,
        u8 arfr_type, u8 retry_limit_type,
        u8 ampdu_time_type)
{
 u32 dis_ra_mask = 0x0;

 coex_dm->cur_ra_mask_type = ra_mask_type;
 dis_ra_mask =
   btc8192e2ant_decide_ra_mask(btcoexist, coex_dm->cur_ss_type,
          ra_mask_type);
 btc8192e2ant_update_ra_mask(btcoexist, force_exec, dis_ra_mask);
 btc8192e2ant_auto_rate_fallback_retry(btcoexist, force_exec, arfr_type);
 btc8192e2ant_retry_limit(btcoexist, force_exec, retry_limit_type);
 btc8192e2ant_ampdu_maxtime(btcoexist, force_exec, ampdu_time_type);
}
