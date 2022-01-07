
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wlan_bssid_ex {int dummy; } ;
struct ndis_802_11_fix_ie {int dummy; } ;
struct TYPE_9__ {int IELength; scalar_t__ IEs; } ;
struct TYPE_8__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ is_same_network (TYPE_2__*,struct wlan_bssid_ex*,int ) ;
 int rtw_bug_check (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int rtw_update_protection (struct adapter*,scalar_t__,int ) ;
 int update_network (TYPE_2__*,struct wlan_bssid_ex*,struct adapter*,int) ;

__attribute__((used)) static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex *pnetwork)
{
 struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);

 rtw_bug_check(&(pmlmepriv->cur_network.network),
  &(pmlmepriv->cur_network.network),
  &(pmlmepriv->cur_network.network),
  &(pmlmepriv->cur_network.network));

 if ((check_fwstate(pmlmepriv, _FW_LINKED) == 1) && (is_same_network(&(pmlmepriv->cur_network.network), pnetwork, 0))) {



  {
   update_network(&(pmlmepriv->cur_network.network), pnetwork, adapter, 1);
   rtw_update_protection(adapter, (pmlmepriv->cur_network.network.IEs) + sizeof(struct ndis_802_11_fix_ie),
         pmlmepriv->cur_network.network.IELength);
  }
 }
}
