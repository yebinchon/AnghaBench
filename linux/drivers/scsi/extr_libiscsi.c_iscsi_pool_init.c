
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_pool {int max; void** pool; int queue; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int iscsi_pool_free (struct iscsi_pool*) ;
 int kfifo_in (int *,void*,int) ;
 int kfifo_init (int *,void*,int) ;
 void** kvcalloc (int,int,int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (void**,void**,int) ;
 int memset (struct iscsi_pool*,int ,int) ;

int
iscsi_pool_init(struct iscsi_pool *q, int max, void ***items, int item_size)
{
 int i, num_arrays = 1;

 memset(q, 0, sizeof(*q));

 q->max = max;



 if (items)
  num_arrays++;
 q->pool = kvcalloc(num_arrays * max, sizeof(void *), GFP_KERNEL);
 if (q->pool == ((void*)0))
  return -ENOMEM;

 kfifo_init(&q->queue, (void*)q->pool, max * sizeof(void*));

 for (i = 0; i < max; i++) {
  q->pool[i] = kzalloc(item_size, GFP_KERNEL);
  if (q->pool[i] == ((void*)0)) {
   q->max = i;
   goto enomem;
  }
  kfifo_in(&q->queue, (void*)&q->pool[i], sizeof(void*));
 }

 if (items) {
  *items = q->pool + max;
  memcpy(*items, q->pool, max * sizeof(void *));
 }

 return 0;

enomem:
 iscsi_pool_free(q);
 return -ENOMEM;
}
