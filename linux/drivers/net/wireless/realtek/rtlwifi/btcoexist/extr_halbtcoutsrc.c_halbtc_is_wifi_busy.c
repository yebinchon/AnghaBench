
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ busytraffic; } ;
struct rtl_priv {TYPE_1__ link_info; } ;



__attribute__((used)) static bool halbtc_is_wifi_busy(struct rtl_priv *rtlpriv)
{
 if (rtlpriv->link_info.busytraffic)
  return 1;
 else
  return 0;
}
