
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; void* content; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;
 TYPE_1__ hmcdrv_cache_file ;
 int hmcdrv_cache_order ;
 int pr_debug (char*,size_t) ;
 int pr_err (char*,size_t) ;

int hmcdrv_cache_startup(size_t cachesize)
{
 if (cachesize > 0) {
  hmcdrv_cache_order = get_order(cachesize);
  hmcdrv_cache_file.content =
   (void *) __get_free_pages(GFP_KERNEL | GFP_DMA,
        hmcdrv_cache_order);

  if (!hmcdrv_cache_file.content) {
   pr_err("Allocating the requested cache size of %zu bytes failed\n",
          cachesize);
   return -ENOMEM;
  }

  pr_debug("content cache enabled, size is %zu bytes\n",
    cachesize);
 }

 hmcdrv_cache_file.len = cachesize;
 return 0;
}
