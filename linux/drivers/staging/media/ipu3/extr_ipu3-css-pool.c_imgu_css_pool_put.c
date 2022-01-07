
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_css_pool {size_t last; TYPE_1__* entry; } ;
struct TYPE_2__ {int valid; } ;


 int IPU3_CSS_POOL_SIZE ;

void imgu_css_pool_put(struct imgu_css_pool *pool)
{
 pool->entry[pool->last].valid = 0;
 pool->last = (pool->last + IPU3_CSS_POOL_SIZE - 1) % IPU3_CSS_POOL_SIZE;
}
