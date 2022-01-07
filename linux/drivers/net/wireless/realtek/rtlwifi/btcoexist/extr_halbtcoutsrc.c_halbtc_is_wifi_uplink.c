
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_busy_traffic; } ;
struct rtl_priv {TYPE_1__ link_info; } ;



bool halbtc_is_wifi_uplink(struct rtl_priv *adapter)
{
 struct rtl_priv *rtlpriv = adapter;

 if (rtlpriv->link_info.tx_busy_traffic)
  return 1;
 else
  return 0;
}
