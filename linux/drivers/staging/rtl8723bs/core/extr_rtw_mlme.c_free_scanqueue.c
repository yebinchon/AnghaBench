
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; int queue; } ;
struct mlme_priv {int num_of_scanned; struct __queue scanned_queue; struct __queue free_bss_pool; } ;
struct list_head {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_rtl871x_mlme_c_ ;
 struct list_head* get_list_head (struct __queue*) ;
 struct list_head* get_next (struct list_head*) ;
 int list_add_tail (struct list_head*,int *) ;
 int list_del_init (struct list_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void free_scanqueue(struct mlme_priv *pmlmepriv)
{
 struct __queue *free_queue = &pmlmepriv->free_bss_pool;
 struct __queue *scan_queue = &pmlmepriv->scanned_queue;
 struct list_head *plist, *phead, *ptemp;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+free_scanqueue\n"));
 spin_lock_bh(&scan_queue->lock);
 spin_lock_bh(&free_queue->lock);

 phead = get_list_head(scan_queue);
 plist = get_next(phead);

 while (plist != phead) {
  ptemp = get_next(plist);
  list_del_init(plist);
  list_add_tail(plist, &free_queue->queue);
  plist = ptemp;
  pmlmepriv->num_of_scanned--;
 }

 spin_unlock_bh(&free_queue->lock);
 spin_unlock_bh(&scan_queue->lock);
}
