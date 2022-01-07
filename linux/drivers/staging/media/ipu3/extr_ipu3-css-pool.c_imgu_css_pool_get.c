
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct imgu_css_pool {int last; TYPE_1__* entry; } ;
struct TYPE_2__ {int valid; } ;


 int IPU3_CSS_POOL_SIZE ;

void imgu_css_pool_get(struct imgu_css_pool *pool)
{

 u32 n = (pool->last + 1) % IPU3_CSS_POOL_SIZE;

 pool->entry[n].valid = 1;
 pool->last = n;
}
