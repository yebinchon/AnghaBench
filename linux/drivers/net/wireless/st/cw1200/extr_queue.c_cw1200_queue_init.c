
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cw1200_queue_stats {size_t map_capacity; } ;
struct cw1200_queue_item {int dummy; } ;
struct cw1200_queue {size_t capacity; unsigned long ttl; int free_pool; TYPE_1__* pool; void* link_map_cache; int gc; int lock; int pending; int queue; int queue_id; struct cw1200_queue_stats* stats; } ;
struct TYPE_2__ {int head; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cw1200_queue_gc ;
 void* kcalloc (size_t,int,int ) ;
 int kfree (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct cw1200_queue*,int ,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int cw1200_queue_init(struct cw1200_queue *queue,
        struct cw1200_queue_stats *stats,
        u8 queue_id,
        size_t capacity,
        unsigned long ttl)
{
 size_t i;

 memset(queue, 0, sizeof(*queue));
 queue->stats = stats;
 queue->capacity = capacity;
 queue->queue_id = queue_id;
 queue->ttl = ttl;
 INIT_LIST_HEAD(&queue->queue);
 INIT_LIST_HEAD(&queue->pending);
 INIT_LIST_HEAD(&queue->free_pool);
 spin_lock_init(&queue->lock);
 timer_setup(&queue->gc, cw1200_queue_gc, 0);

 queue->pool = kcalloc(capacity, sizeof(struct cw1200_queue_item),
         GFP_KERNEL);
 if (!queue->pool)
  return -ENOMEM;

 queue->link_map_cache = kcalloc(stats->map_capacity, sizeof(int),
     GFP_KERNEL);
 if (!queue->link_map_cache) {
  kfree(queue->pool);
  queue->pool = ((void*)0);
  return -ENOMEM;
 }

 for (i = 0; i < capacity; ++i)
  list_add_tail(&queue->pool[i].head, &queue->free_pool);

 return 0;
}
