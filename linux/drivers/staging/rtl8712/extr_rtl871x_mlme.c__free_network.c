
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wlan_network {int list; scalar_t__ last_scanned; scalar_t__ fixed; } ;
struct __queue {int lock; int queue; } ;
struct mlme_priv {int num_of_scanned; struct __queue free_bss_pool; } ;


 int HZ ;
 int SCANQUEUE_LIFETIME ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _free_network(struct mlme_priv *pmlmepriv,
     struct wlan_network *pnetwork)
{
 u32 curr_time, delta_time;
 unsigned long irqL;
 struct __queue *free_queue = &(pmlmepriv->free_bss_pool);

 if (!pnetwork)
  return;
 if (pnetwork->fixed)
  return;
 curr_time = jiffies;
 delta_time = (curr_time - (u32)pnetwork->last_scanned) / HZ;
 if (delta_time < SCANQUEUE_LIFETIME)
  return;
 spin_lock_irqsave(&free_queue->lock, irqL);
 list_del_init(&pnetwork->list);
 list_add_tail(&pnetwork->list, &free_queue->queue);
 pmlmepriv->num_of_scanned--;
 spin_unlock_irqrestore(&free_queue->lock, irqL);
}
