
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MacAddress; } ;
struct wlan_network {TYPE_1__ network; } ;
struct sta_info {int dummy; } ;
struct mp_priv {int prev_fw_state; } ;
struct mlme_priv {int lock; int fw_state; struct wlan_network cur_network; } ;
struct _adapter {int stapriv; struct mlme_priv mlmepriv; struct mp_priv mppriv; } ;


 int WIFI_MP_STATE ;
 int _SUCCESS ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int memset (struct wlan_network*,int ,int) ;
 int r8712_free_stainfo (struct _adapter*,struct sta_info*) ;
 struct sta_info* r8712_get_stainfo (int *,int ) ;
 int r8712_os_indicate_disconnect (struct _adapter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mp_stop_test(struct _adapter *padapter)
{
 struct mp_priv *pmppriv = &padapter->mppriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_network *tgt_network = &pmlmepriv->cur_network;
 struct sta_info *psta;
 unsigned long irqL;

 spin_lock_irqsave(&pmlmepriv->lock, irqL);
 if (!check_fwstate(pmlmepriv, WIFI_MP_STATE))
  goto end_of_mp_stop_test;

 r8712_os_indicate_disconnect(padapter);

 psta = r8712_get_stainfo(&padapter->stapriv,
     tgt_network->network.MacAddress);
 if (psta)
  r8712_free_stainfo(padapter, psta);

 pmlmepriv->fw_state = pmppriv->prev_fw_state;

 memset(tgt_network, 0, sizeof(struct wlan_network));
end_of_mp_stop_test:
 spin_unlock_irqrestore(&pmlmepriv->lock, irqL);
 return _SUCCESS;
}
