
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlan_bssid_ex {int dummy; } ;
struct TYPE_5__ {int IELength; scalar_t__ IEs; } ;
struct TYPE_4__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
struct NDIS_802_11_FIXED_IEs {int dummy; } ;


 scalar_t__ is_same_network (TYPE_2__*,struct wlan_bssid_ex*) ;
 int r8712_update_protection (struct _adapter*,scalar_t__,int ) ;
 int update_network (TYPE_2__*,struct wlan_bssid_ex*,struct _adapter*) ;

__attribute__((used)) static void update_current_network(struct _adapter *adapter,
       struct wlan_bssid_ex *pnetwork)
{
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 if (is_same_network(&(pmlmepriv->cur_network.network), pnetwork)) {
  update_network(&(pmlmepriv->cur_network.network),
          pnetwork, adapter);
  r8712_update_protection(adapter,
          (pmlmepriv->cur_network.network.IEs) +
          sizeof(struct NDIS_802_11_FIXED_IEs),
          pmlmepriv->cur_network.network.IELength);
 }
}
