
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
typedef int gfp_t ;
struct TYPE_2__ {int host; } ;


 scalar_t__ PageDirty (struct page*) ;
 int PagePrivate (struct page*) ;
 int ceph_release_fscache_page (struct page*,int ) ;
 int dout (char*,int ,struct page*,int ,char*) ;

__attribute__((used)) static int ceph_releasepage(struct page *page, gfp_t g)
{
 dout("%p releasepage %p idx %lu (%sdirty)\n", page->mapping->host,
      page, page->index, PageDirty(page) ? "" : "not ");


 if (!ceph_release_fscache_page(page, g))
  return 0;

 return !PagePrivate(page);
}
