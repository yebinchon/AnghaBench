
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct async_extent {int nr_pages; TYPE_1__** pages; } ;
struct TYPE_3__ {int mapping; } ;


 int WARN_ON (int ) ;
 int kfree (TYPE_1__**) ;
 int put_page (TYPE_1__*) ;

__attribute__((used)) static void free_async_extent_pages(struct async_extent *async_extent)
{
 int i;

 if (!async_extent->pages)
  return;

 for (i = 0; i < async_extent->nr_pages; i++) {
  WARN_ON(async_extent->pages[i]->mapping);
  put_page(async_extent->pages[i]);
 }
 kfree(async_extent->pages);
 async_extent->nr_pages = 0;
 async_extent->pages = ((void*)0);
}
