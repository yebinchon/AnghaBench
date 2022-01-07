
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wifi_only_cfg {int dummy; } ;


 int hal8822b_wifi_only_switch_antenna (struct wifi_only_cfg*,int ) ;

void ex_hal8822b_wifi_only_switchbandnotify(struct wifi_only_cfg *wifionlycfg,
         u8 is_5g)
{
 hal8822b_wifi_only_switch_antenna(wifionlycfg, is_5g);
}
