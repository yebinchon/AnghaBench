
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_queue {void* pool; int queue; struct iu_entry* items; int lock; } ;
struct srp_buf {int dummy; } ;
struct iu_entry {struct srp_buf* sbuf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (size_t,int,int ) ;
 int kfifo_in (int *,void*,int) ;
 int kfifo_init (int *,void*,size_t) ;
 int kfree (void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int srp_iu_pool_alloc(struct srp_queue *q, size_t max,
        struct srp_buf **ring)
{
 struct iu_entry *iue;
 int i;

 q->pool = kcalloc(max, sizeof(struct iu_entry *), GFP_KERNEL);
 if (!q->pool)
  return -ENOMEM;
 q->items = kcalloc(max, sizeof(struct iu_entry), GFP_KERNEL);
 if (!q->items)
  goto free_pool;

 spin_lock_init(&q->lock);
 kfifo_init(&q->queue, (void *)q->pool, max * sizeof(void *));

 for (i = 0, iue = q->items; i < max; i++) {
  kfifo_in(&q->queue, (void *)&iue, sizeof(void *));
  iue->sbuf = ring[i];
  iue++;
 }
 return 0;

free_pool:
 kfree(q->pool);
 return -ENOMEM;
}
