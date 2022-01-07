
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_network {int dummy; } ;
struct mlme_priv {int lock; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int _rtw_roaming (struct adapter*,struct wlan_network*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 spin_lock_bh(&pmlmepriv->lock);
 _rtw_roaming(padapter, tgt_network);
 spin_unlock_bh(&pmlmepriv->lock);
}
