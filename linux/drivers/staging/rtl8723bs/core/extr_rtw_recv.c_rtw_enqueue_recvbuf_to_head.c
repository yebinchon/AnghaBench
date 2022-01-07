
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_buf {int list; } ;
struct __queue {int lock; } ;
typedef int sint ;


 int _SUCCESS ;
 int get_list_head (struct __queue*) ;
 int list_add (int *,int ) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

sint rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queue)
{
 spin_lock_bh(&queue->lock);

 list_del_init(&precvbuf->list);
 list_add(&precvbuf->list, get_list_head(queue));

 spin_unlock_bh(&queue->lock);

 return _SUCCESS;
}
