
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_frame {int dummy; } ;
struct __queue {int lock; } ;


 int _rtw_enqueue_recvframe (struct recv_frame*,struct __queue*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int rtw_enqueue_recvframe(struct recv_frame *precvframe, struct __queue *queue)
{
 int ret;

 spin_lock_bh(&queue->lock);
 ret = _rtw_enqueue_recvframe(precvframe, queue);
 spin_unlock_bh(&queue->lock);

 return ret;
}
