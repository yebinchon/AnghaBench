
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bt_ctrl_lps; } ;
struct btc_coexist {TYPE_1__ bt_info; } ;



__attribute__((used)) static void halbtc_post_normal_lps(struct btc_coexist *btcoexist)
{
 if (btcoexist->bt_info.bt_ctrl_lps)
  btcoexist->bt_info.bt_ctrl_lps = 0;
}
