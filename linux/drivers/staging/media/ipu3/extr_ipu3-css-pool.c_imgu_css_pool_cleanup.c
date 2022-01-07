
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_device {int dummy; } ;
struct imgu_css_pool {TYPE_1__* entry; } ;
struct TYPE_2__ {int param; } ;


 unsigned int IPU3_CSS_POOL_SIZE ;
 int imgu_dmamap_free (struct imgu_device*,int *) ;

void imgu_css_pool_cleanup(struct imgu_device *imgu, struct imgu_css_pool *pool)
{
 unsigned int i;

 for (i = 0; i < IPU3_CSS_POOL_SIZE; i++)
  imgu_dmamap_free(imgu, &pool->entry[i].param);
}
