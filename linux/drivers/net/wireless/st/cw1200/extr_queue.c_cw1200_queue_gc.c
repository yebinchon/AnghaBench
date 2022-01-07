
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct cw1200_queue {int stats; int lock; } ;


 int LIST_HEAD (int ) ;
 int __cw1200_queue_gc (struct cw1200_queue*,int *,int) ;
 int cw1200_queue_post_gc (int ,int *) ;
 struct cw1200_queue* from_timer (int ,struct timer_list*,int ) ;
 int gc ;
 int list ;
 struct cw1200_queue* queue ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void cw1200_queue_gc(struct timer_list *t)
{
 LIST_HEAD(list);
 struct cw1200_queue *queue =
  from_timer(queue, t, gc);

 spin_lock_bh(&queue->lock);
 __cw1200_queue_gc(queue, &list, 1);
 spin_unlock_bh(&queue->lock);
 cw1200_queue_post_gc(queue->stats, &list);
}
