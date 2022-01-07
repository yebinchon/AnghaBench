
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union recv_frame {int dummy; } recv_frame ;
struct __queue {int lock; } ;


 union recv_frame* _rtw_alloc_recvframe (struct __queue*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

union recv_frame *rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
{
 union recv_frame *precvframe;

 spin_lock_bh(&pfree_recv_queue->lock);

 precvframe = _rtw_alloc_recvframe(pfree_recv_queue);

 spin_unlock_bh(&pfree_recv_queue->lock);

 return precvframe;
}
