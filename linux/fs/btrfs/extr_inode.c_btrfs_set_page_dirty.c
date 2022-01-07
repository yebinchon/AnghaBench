
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __set_page_dirty_nobuffers (struct page*) ;

__attribute__((used)) static int btrfs_set_page_dirty(struct page *page)
{
 return __set_page_dirty_nobuffers(page);
}
