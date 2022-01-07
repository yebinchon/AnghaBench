
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int MacAddress; } ;
struct wlan_network {int fixed; TYPE_2__ network; } ;
struct mlme_priv {int scanned_queue; struct wlan_network cur_network; } ;
struct TYPE_3__ {int asoc_sta_count; } ;
struct adapter {TYPE_1__ stapriv; struct mlme_priv mlmepriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 struct wlan_network* rtw_find_network (int *,int ) ;
 int rtw_free_network_nolock (struct adapter*,struct wlan_network*) ;

__attribute__((used)) static void find_network(struct adapter *adapter)
{
 struct wlan_network *pwlan = ((void*)0);
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 struct wlan_network *tgt_network = &pmlmepriv->cur_network;

 pwlan = rtw_find_network(&pmlmepriv->scanned_queue, tgt_network->network.MacAddress);
 if (pwlan)
  pwlan->fixed = 0;
 else
  RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_assoc_resources : pwlan == NULL\n\n"));


 if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) &&
     (adapter->stapriv.asoc_sta_count == 1))
  rtw_free_network_nolock(adapter, pwlan);
}
