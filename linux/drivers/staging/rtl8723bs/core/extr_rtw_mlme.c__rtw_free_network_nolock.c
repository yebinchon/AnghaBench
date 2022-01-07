
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_network {int fixed; int list; } ;
struct __queue {int dummy; } ;
struct mlme_priv {int num_of_scanned; struct __queue free_bss_pool; } ;


 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;

void _rtw_free_network_nolock(struct mlme_priv *pmlmepriv, struct wlan_network *pnetwork)
{

 struct __queue *free_queue = &(pmlmepriv->free_bss_pool);

 if (pnetwork == ((void*)0))
  return;

 if (pnetwork->fixed == 1)
  return;



 list_del_init(&(pnetwork->list));

 list_add_tail(&(pnetwork->list), get_list_head(free_queue));

 pmlmepriv->num_of_scanned--;


}
