
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_acl_pool {int acl_node_q; } ;
struct sta_priv {struct wlan_acl_pool acl_list; } ;
struct mlme_priv {int bcn_update_lock; } ;
struct adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;


 int _rtw_init_queue (int *) ;
 int spin_lock_init (int *) ;
 int start_ap_mode (struct adapter*) ;

void init_mlme_ap_info(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;

 spin_lock_init(&pmlmepriv->bcn_update_lock);


 _rtw_init_queue(&pacl_list->acl_node_q);



 start_ap_mode(padapter);
}
