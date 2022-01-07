
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imgu_device {int dummy; } ;
struct imgu_css_pool {unsigned int last; TYPE_1__* entry; } ;
struct TYPE_4__ {int * vaddr; } ;
struct TYPE_3__ {int valid; TYPE_2__ param; } ;


 int ENOMEM ;
 unsigned int IPU3_CSS_POOL_SIZE ;
 int imgu_css_pool_cleanup (struct imgu_device*,struct imgu_css_pool*) ;
 int imgu_dmamap_alloc (struct imgu_device*,TYPE_2__*,size_t) ;

int imgu_css_pool_init(struct imgu_device *imgu, struct imgu_css_pool *pool,
         size_t size)
{
 unsigned int i;

 for (i = 0; i < IPU3_CSS_POOL_SIZE; i++) {
  pool->entry[i].valid = 0;
  if (size == 0) {
   pool->entry[i].param.vaddr = ((void*)0);
   continue;
  }

  if (!imgu_dmamap_alloc(imgu, &pool->entry[i].param, size))
   goto fail;
 }

 pool->last = IPU3_CSS_POOL_SIZE;

 return 0;

fail:
 imgu_css_pool_cleanup(imgu, pool);
 return -ENOMEM;
}
