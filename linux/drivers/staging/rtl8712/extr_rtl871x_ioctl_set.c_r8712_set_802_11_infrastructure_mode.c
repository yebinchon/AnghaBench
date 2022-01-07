
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {TYPE_1__ network; } ;
struct mlme_priv {int lock; struct wlan_network cur_network; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
typedef enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;







 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_STATION_STATE ;
 int _FW_LINKED ;
 int _clr_fwstate_ (struct mlme_priv*,int) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int r8712_disassoc_cmd (struct _adapter*) ;
 int r8712_free_assoc_resources (struct _adapter*) ;
 int r8712_ind_disconnect (struct _adapter*) ;
 int set_fwstate (struct mlme_priv*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_set_802_11_infrastructure_mode(struct _adapter *padapter,
 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
{
 unsigned long irqL;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_network *cur_network = &pmlmepriv->cur_network;
 enum NDIS_802_11_NETWORK_INFRASTRUCTURE *pold_state =
    &(cur_network->network.InfrastructureMode);

 if (*pold_state != networktype) {
  spin_lock_irqsave(&pmlmepriv->lock, irqL);
  if (check_fwstate(pmlmepriv, _FW_LINKED) ||
      (*pold_state == 130))
   r8712_disassoc_cmd(padapter);
  if (check_fwstate(pmlmepriv,
      _FW_LINKED | WIFI_ADHOC_MASTER_STATE))
   r8712_free_assoc_resources(padapter);
  if (check_fwstate(pmlmepriv, _FW_LINKED) ||
      (*pold_state == 129) ||
      (*pold_state == 130)) {




   r8712_ind_disconnect(padapter);
  }
  *pold_state = networktype;



  _clr_fwstate_(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE |
         WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE);
  switch (networktype) {
  case 130:
   set_fwstate(pmlmepriv, WIFI_ADHOC_STATE);
   break;
  case 129:
   set_fwstate(pmlmepriv, WIFI_STATION_STATE);
   break;
  case 132:
   set_fwstate(pmlmepriv, WIFI_AP_STATE);
   break;
  case 131:
  case 128:
   break;
  }
  spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 }
}
