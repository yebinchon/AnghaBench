
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int btc8821a1ant_coex_table_with_type (struct btc_coexist*,int ,int) ;
 int btc8821a1ant_ps_tdma (struct btc_coexist*,int ,int,int) ;

__attribute__((used)) static void btc8821a1ant_action_hs(struct btc_coexist *btcoexist)
{
 btc8821a1ant_ps_tdma(btcoexist, NORMAL_EXEC, 1, 5);
 btc8821a1ant_coex_table_with_type(btcoexist, FORCE_EXEC, 2);
}
