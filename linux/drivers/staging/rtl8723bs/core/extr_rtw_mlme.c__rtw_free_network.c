
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct wlan_network {int fixed; int list; scalar_t__ last_scanned; } ;
struct __queue {int lock; int queue; } ;
struct mlme_priv {int num_of_scanned; struct __queue free_bss_pool; } ;


 unsigned int SCANQUEUE_LIFETIME ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *pnetwork, u8 isfreeall)
{
 unsigned int delta_time;
 u32 lifetime = SCANQUEUE_LIFETIME;

 struct __queue *free_queue = &(pmlmepriv->free_bss_pool);

 if (pnetwork == ((void*)0))
  return;

 if (pnetwork->fixed == 1)
  return;

 if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == 1) ||
  (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1))
  lifetime = 1;

 if (!isfreeall) {
  delta_time = jiffies_to_msecs(jiffies - pnetwork->last_scanned);
  if (delta_time < lifetime)
   return;
 }

 spin_lock_bh(&free_queue->lock);

 list_del_init(&(pnetwork->list));

 list_add_tail(&(pnetwork->list), &(free_queue->queue));

 pmlmepriv->num_of_scanned--;




 spin_unlock_bh(&free_queue->lock);
}
