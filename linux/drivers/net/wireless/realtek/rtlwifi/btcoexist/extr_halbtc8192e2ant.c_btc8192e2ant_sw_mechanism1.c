
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int NORMAL_EXEC ;
 int btc8192e2ant_rf_shrink (struct btc_coexist*,int ,int) ;

__attribute__((used)) static void btc8192e2ant_sw_mechanism1(struct btc_coexist *btcoexist,
           bool shrink_rx_lpf, bool low_penalty_ra,
           bool limited_dig, bool btlan_constrain)
{
 btc8192e2ant_rf_shrink(btcoexist, NORMAL_EXEC, shrink_rx_lpf);
}
