
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int NORMAL_EXEC ;
 int btc8821a2ant_low_penalty_ra (struct btc_coexist*,int ,int) ;

__attribute__((used)) static void btc8821a2ant_sw_mechanism1(struct btc_coexist *btcoexist,
           bool shrink_rx_lpf, bool low_penalty_ra,
           bool limited_dig, bool bt_lna_constrain)
{
 btc8821a2ant_low_penalty_ra(btcoexist, NORMAL_EXEC, low_penalty_ra);
}
