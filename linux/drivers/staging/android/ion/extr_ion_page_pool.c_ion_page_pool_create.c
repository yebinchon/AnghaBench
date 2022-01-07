
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_page_pool {int gfp_mask; unsigned int order; int list; int mutex; int high_items; int low_items; scalar_t__ low_count; scalar_t__ high_count; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __GFP_COMP ;
 struct ion_page_pool* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int plist_node_init (int *,unsigned int) ;

struct ion_page_pool *ion_page_pool_create(gfp_t gfp_mask, unsigned int order)
{
 struct ion_page_pool *pool = kmalloc(sizeof(*pool), GFP_KERNEL);

 if (!pool)
  return ((void*)0);
 pool->high_count = 0;
 pool->low_count = 0;
 INIT_LIST_HEAD(&pool->low_items);
 INIT_LIST_HEAD(&pool->high_items);
 pool->gfp_mask = gfp_mask | __GFP_COMP;
 pool->order = order;
 mutex_init(&pool->mutex);
 plist_node_init(&pool->list, order);

 return pool;
}
