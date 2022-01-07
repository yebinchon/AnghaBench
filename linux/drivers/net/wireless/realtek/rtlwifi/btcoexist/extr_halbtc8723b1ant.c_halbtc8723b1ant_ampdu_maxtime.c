
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btc_coexist {int (* btc_write_1byte ) (struct btc_coexist*,int,int) ;} ;
struct TYPE_2__ {int cur_ampdu_time_type; int pre_ampdu_time_type; int backup_ampdu_max_time; } ;


 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_ampdu_maxtime(struct btc_coexist *btcoexist,
       bool force_exec, u8 type)
{
 coex_dm->cur_ampdu_time_type = type;

 if (force_exec || (coex_dm->pre_ampdu_time_type !=
  coex_dm->cur_ampdu_time_type)) {
  switch (coex_dm->cur_ampdu_time_type) {
  case 0:
   btcoexist->btc_write_1byte(btcoexist, 0x456,
     coex_dm->backup_ampdu_max_time);
   break;
  case 1:
   btcoexist->btc_write_1byte(btcoexist, 0x456, 0x38);
   break;
  default:
   break;
  }
 }

 coex_dm->pre_ampdu_time_type = coex_dm->cur_ampdu_time_type;
}
