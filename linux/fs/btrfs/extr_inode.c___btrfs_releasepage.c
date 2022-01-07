
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int ClearPagePrivate (struct page*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int try_release_extent_mapping (struct page*,int ) ;

__attribute__((used)) static int __btrfs_releasepage(struct page *page, gfp_t gfp_flags)
{
 int ret = try_release_extent_mapping(page, gfp_flags);
 if (ret == 1) {
  ClearPagePrivate(page);
  set_page_private(page, 0);
  put_page(page);
 }
 return ret;
}
