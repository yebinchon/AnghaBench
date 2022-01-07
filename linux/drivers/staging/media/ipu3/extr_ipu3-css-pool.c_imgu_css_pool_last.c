
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_css_pool {unsigned int last; TYPE_1__* entry; } ;
struct imgu_css_map {int member_0; } ;
struct TYPE_2__ {struct imgu_css_map const param; int valid; } ;


 unsigned int IPU3_CSS_POOL_SIZE ;
 int WARN_ON (int) ;

const struct imgu_css_map *
imgu_css_pool_last(struct imgu_css_pool *pool, unsigned int n)
{
 static const struct imgu_css_map null_map = { 0 };
 int i = (pool->last + IPU3_CSS_POOL_SIZE - n) % IPU3_CSS_POOL_SIZE;

 WARN_ON(n >= IPU3_CSS_POOL_SIZE);

 if (!pool->entry[i].valid)
  return &null_map;

 return &pool->entry[i].param;
}
