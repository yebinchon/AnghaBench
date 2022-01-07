
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_frame {int list; int * pkt; } ;
struct __queue {int lock; } ;


 int _FAIL ;
 int _SUCCESS ;
 int dev_kfree_skb_any (int *) ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int rtw_free_recvframe(struct recv_frame *precvframe,
         struct __queue *pfree_recv_queue)
{
 if (!precvframe)
  return _FAIL;
 if (precvframe->pkt) {
  dev_kfree_skb_any(precvframe->pkt);
  precvframe->pkt = ((void*)0);
 }

 spin_lock_bh(&pfree_recv_queue->lock);

 list_del_init(&precvframe->list);

 list_add_tail(&precvframe->list, get_list_head(pfree_recv_queue));

 spin_unlock_bh(&pfree_recv_queue->lock);

 return _SUCCESS;
}
