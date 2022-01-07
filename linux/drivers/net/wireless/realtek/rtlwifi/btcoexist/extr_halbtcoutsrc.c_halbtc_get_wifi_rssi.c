
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int undec_sm_pwdb; } ;
struct rtl_priv {TYPE_1__ dm; } ;
typedef int s32 ;



__attribute__((used)) static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)
{
 return rtlpriv->dm.undec_sm_pwdb;
}
