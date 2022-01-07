
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int single_ant_path; } ;
struct btc_coexist {TYPE_1__ board_info; } ;



void exhalbtc_set_single_ant_path(struct btc_coexist *btcoexist,
      u8 single_ant_path)
{
 btcoexist->board_info.single_ant_path = single_ant_path;
}
