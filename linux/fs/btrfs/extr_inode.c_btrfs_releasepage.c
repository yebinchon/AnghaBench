
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int __btrfs_releasepage (struct page*,int ) ;

__attribute__((used)) static int btrfs_releasepage(struct page *page, gfp_t gfp_flags)
{
 if (PageWriteback(page) || PageDirty(page))
  return 0;
 return __btrfs_releasepage(page, gfp_flags);
}
