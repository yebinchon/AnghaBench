
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wifi_only_cfg {int dummy; } ;


 int halwifionly_phy_set_bb_reg (struct wifi_only_cfg*,int,int,int) ;

void hal8822b_wifi_only_switch_antenna(struct wifi_only_cfg *wifionlycfg,
           u8 is_5g)
{
 if (is_5g)
  halwifionly_phy_set_bb_reg(wifionlycfg, 0xcbc, 0x300, 0x1);
 else
  halwifionly_phy_set_bb_reg(wifionlycfg, 0xcbc, 0x300, 0x2);
}
