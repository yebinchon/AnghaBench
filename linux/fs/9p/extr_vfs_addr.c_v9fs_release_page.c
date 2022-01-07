
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ PagePrivate (struct page*) ;
 int v9fs_fscache_release_page (struct page*,int ) ;

__attribute__((used)) static int v9fs_release_page(struct page *page, gfp_t gfp)
{
 if (PagePrivate(page))
  return 0;
 return v9fs_fscache_release_page(page, gfp);
}
