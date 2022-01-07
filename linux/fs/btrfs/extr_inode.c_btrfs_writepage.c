
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct inode* host; } ;


 int AOP_WRITEPAGE_ACTIVATE ;
 int PF_MEMALLOC ;
 int btrfs_add_delayed_iput (struct inode*) ;
 TYPE_2__* current ;
 int extent_write_full_page (struct page*,struct writeback_control*) ;
 int igrab (struct inode*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int btrfs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 int ret;

 if (current->flags & PF_MEMALLOC) {
  redirty_page_for_writepage(wbc, page);
  unlock_page(page);
  return 0;
 }






 if (!igrab(inode)) {
  redirty_page_for_writepage(wbc, page);
  return AOP_WRITEPAGE_ACTIVATE;
 }
 ret = extent_write_full_page(page, wbc);
 btrfs_add_delayed_iput(inode);
 return ret;
}
