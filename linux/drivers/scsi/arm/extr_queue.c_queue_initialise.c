
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int list; int * SCpnt; } ;
struct TYPE_6__ {TYPE_2__* alloc; int free; int head; int queue_lock; } ;
typedef TYPE_1__ Queue_t ;
typedef TYPE_2__ QE_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int NR_QE ;
 int QUEUE_MAGIC_FREE ;
 int SET_MAGIC (TYPE_2__*,int ) ;
 TYPE_2__* kmalloc_array (unsigned int,int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;

int queue_initialise (Queue_t *queue)
{
 unsigned int nqueues = NR_QE;
 QE_t *q;

 spin_lock_init(&queue->queue_lock);
 INIT_LIST_HEAD(&queue->head);
 INIT_LIST_HEAD(&queue->free);







 queue->alloc = q = kmalloc_array(nqueues, sizeof(QE_t), GFP_KERNEL);
 if (q) {
  for (; nqueues; q++, nqueues--) {
   SET_MAGIC(q, QUEUE_MAGIC_FREE);
   q->SCpnt = ((void*)0);
   list_add(&q->list, &queue->free);
  }
 }

 return queue->alloc != ((void*)0);
}
