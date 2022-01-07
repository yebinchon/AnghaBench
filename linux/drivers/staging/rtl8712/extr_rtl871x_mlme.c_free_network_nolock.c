
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_network {int list; scalar_t__ fixed; } ;
struct __queue {int queue; } ;
struct mlme_priv {int num_of_scanned; struct __queue free_bss_pool; } ;


 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static void free_network_nolock(struct mlme_priv *pmlmepriv,
     struct wlan_network *pnetwork)
{
 struct __queue *free_queue = &pmlmepriv->free_bss_pool;

 if (!pnetwork)
  return;
 if (pnetwork->fixed)
  return;
 list_del_init(&pnetwork->list);
 list_add_tail(&pnetwork->list, &free_queue->queue);
 pmlmepriv->num_of_scanned--;
}
