
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_wdev_priv {int power_mgmt; } ;
struct adapter {int dummy; } ;


 struct rtw_wdev_priv* adapter_wdev_data (struct adapter*) ;

inline bool rtw_cfg80211_pwr_mgmt(struct adapter *adapter)
{
 struct rtw_wdev_priv *rtw_wdev_priv = adapter_wdev_data(adapter);
 return rtw_wdev_priv->power_mgmt;
}
