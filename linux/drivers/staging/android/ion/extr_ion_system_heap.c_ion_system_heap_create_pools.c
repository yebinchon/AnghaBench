
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_page_pool {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int NUM_ORDERS ;
 int high_order_gfp_flags ;
 struct ion_page_pool* ion_page_pool_create (int ,int) ;
 int ion_system_heap_destroy_pools (struct ion_page_pool**) ;
 int low_order_gfp_flags ;
 int* orders ;

__attribute__((used)) static int ion_system_heap_create_pools(struct ion_page_pool **pools)
{
 int i;

 for (i = 0; i < NUM_ORDERS; i++) {
  struct ion_page_pool *pool;
  gfp_t gfp_flags = low_order_gfp_flags;

  if (orders[i] > 4)
   gfp_flags = high_order_gfp_flags;

  pool = ion_page_pool_create(gfp_flags, orders[i]);
  if (!pool)
   goto err_create_pool;
  pools[i] = pool;
 }

 return 0;

err_create_pool:
 ion_system_heap_destroy_pools(pools);
 return -ENOMEM;
}
