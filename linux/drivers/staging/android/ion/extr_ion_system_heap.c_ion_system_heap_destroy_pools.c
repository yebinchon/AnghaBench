
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_page_pool {int dummy; } ;


 int NUM_ORDERS ;
 int ion_page_pool_destroy (struct ion_page_pool*) ;

__attribute__((used)) static void ion_system_heap_destroy_pools(struct ion_page_pool **pools)
{
 int i;

 for (i = 0; i < NUM_ORDERS; i++)
  if (pools[i])
   ion_page_pool_destroy(pools[i]);
}
