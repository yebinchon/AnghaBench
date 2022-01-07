
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct btrfs_writepage_fixup {int work; struct page* page; } ;
struct btrfs_fs_info {int fixup_workers; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EAGAIN ;
 int EBUSY ;
 int GFP_NOFS ;
 scalar_t__ PageChecked (struct page*) ;
 int SetPageChecked (struct page*) ;
 scalar_t__ TestClearPagePrivate2 (struct page*) ;
 int btrfs_fixup_helper ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (int ,int *) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_writepage_fixup_worker ;
 int get_page (struct page*) ;
 struct btrfs_writepage_fixup* kzalloc (int,int ) ;

int btrfs_writepage_cow_fixup(struct page *page, u64 start, u64 end)
{
 struct inode *inode = page->mapping->host;
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_writepage_fixup *fixup;


 if (TestClearPagePrivate2(page))
  return 0;

 if (PageChecked(page))
  return -EAGAIN;

 fixup = kzalloc(sizeof(*fixup), GFP_NOFS);
 if (!fixup)
  return -EAGAIN;

 SetPageChecked(page);
 get_page(page);
 btrfs_init_work(&fixup->work, btrfs_fixup_helper,
   btrfs_writepage_fixup_worker, ((void*)0), ((void*)0));
 fixup->page = page;
 btrfs_queue_work(fs_info->fixup_workers, &fixup->work);
 return -EBUSY;
}
