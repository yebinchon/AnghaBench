
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;
struct adapter {scalar_t__* pid; int pnetdev; struct mlme_priv mlmepriv; } ;


 int SIGALRM ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int netif_carrier_on (int ) ;
 int rtw_cfg80211_ibss_indicate_connect (struct adapter*) ;
 int rtw_cfg80211_indicate_connect (struct adapter*) ;
 int rtw_indicate_wx_assoc_event (struct adapter*) ;
 int rtw_signal_process (scalar_t__,int ) ;

void rtw_os_indicate_connect(struct adapter *adapter)
{
 struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);

 if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == 1) ||
  (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1)) {
  rtw_cfg80211_ibss_indicate_connect(adapter);
 } else
  rtw_cfg80211_indicate_connect(adapter);

 rtw_indicate_wx_assoc_event(adapter);
 netif_carrier_on(adapter->pnetdev);

 if (adapter->pid[2] != 0)
  rtw_signal_process(adapter->pid[2], SIGALRM);
}
