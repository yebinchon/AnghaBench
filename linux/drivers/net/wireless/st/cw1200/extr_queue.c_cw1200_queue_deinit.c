
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_queue {scalar_t__ capacity; int * link_map_cache; int * pool; int free_pool; int gc; } ;


 int INIT_LIST_HEAD (int *) ;
 int cw1200_queue_clear (struct cw1200_queue*) ;
 int del_timer_sync (int *) ;
 int kfree (int *) ;

void cw1200_queue_deinit(struct cw1200_queue *queue)
{
 cw1200_queue_clear(queue);
 del_timer_sync(&queue->gc);
 INIT_LIST_HEAD(&queue->free_pool);
 kfree(queue->pool);
 kfree(queue->link_map_cache);
 queue->pool = ((void*)0);
 queue->link_map_cache = ((void*)0);
 queue->capacity = 0;
}
