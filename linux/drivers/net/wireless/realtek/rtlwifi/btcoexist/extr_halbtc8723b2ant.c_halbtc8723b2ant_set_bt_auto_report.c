
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int (* btc_fill_h2c ) (struct btc_coexist*,int,int,int *) ;} ;


 int BIT (int ) ;
 int stub1 (struct btc_coexist*,int,int,int *) ;

__attribute__((used)) static
void halbtc8723b2ant_set_bt_auto_report(struct btc_coexist *btcoexist,
     bool enable_auto_report)
{
 u8 h2c_parameter[1] = {0};

 h2c_parameter[0] = 0;

 if (enable_auto_report)
  h2c_parameter[0] |= BIT(0);

 btcoexist->btc_fill_h2c(btcoexist, 0x68, 1, h2c_parameter);
}
