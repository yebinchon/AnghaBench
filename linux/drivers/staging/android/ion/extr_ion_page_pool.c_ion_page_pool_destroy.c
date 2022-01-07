
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_page_pool {int dummy; } ;


 int kfree (struct ion_page_pool*) ;

void ion_page_pool_destroy(struct ion_page_pool *pool)
{
 kfree(pool);
}
