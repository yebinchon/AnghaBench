
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int dummy; } ;


 int btc8821a1ant_ampdu_max_time (struct btc_coexist*,int,int) ;
 int btc8821a1ant_auto_rate_fb_retry (struct btc_coexist*,int,int) ;
 int btc8821a1ant_retry_limit (struct btc_coexist*,int,int) ;
 int btc8821a1ant_update_ra_mask (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8821a1ant_limited_tx(struct btc_coexist *btcoexist,
        bool force_exec, u8 ra_mask_type,
        u8 arfr_type, u8 retry_limit_type,
        u8 ampdu_time_type)
{
 switch (ra_mask_type) {
 case 0:
  btc8821a1ant_update_ra_mask(btcoexist, force_exec, 0x0);
  break;
 case 1:
  btc8821a1ant_update_ra_mask(btcoexist, force_exec,
         0x00000003);
  break;
 case 2:
  btc8821a1ant_update_ra_mask(btcoexist, force_exec,
         0x0001f1f7);
  break;
 default:
  break;
 }

 btc8821a1ant_auto_rate_fb_retry(btcoexist, force_exec, arfr_type);
 btc8821a1ant_retry_limit(btcoexist, force_exec, retry_limit_type);
 btc8821a1ant_ampdu_max_time(btcoexist, force_exec, ampdu_time_type);
}
