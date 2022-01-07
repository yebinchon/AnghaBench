
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_page_pool {int low_count; int order; scalar_t__ high_count; } ;



__attribute__((used)) static int ion_page_pool_total(struct ion_page_pool *pool, bool high)
{
 int count = pool->low_count;

 if (high)
  count += pool->high_count;

 return count << pool->order;
}
