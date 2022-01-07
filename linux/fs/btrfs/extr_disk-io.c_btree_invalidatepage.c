
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {TYPE_2__* mapping; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_6__ {TYPE_1__* root; struct extent_io_tree io_tree; } ;
struct TYPE_5__ {int host; } ;
struct TYPE_4__ {int fs_info; } ;


 TYPE_3__* BTRFS_I (int ) ;
 int ClearPagePrivate (struct page*) ;
 int GFP_NOFS ;
 scalar_t__ PagePrivate (struct page*) ;
 int btree_releasepage (struct page*,int ) ;
 int btrfs_warn (int ,char*,unsigned long long) ;
 int extent_invalidatepage (struct extent_io_tree*,struct page*,unsigned int) ;
 scalar_t__ page_offset (struct page*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static void btree_invalidatepage(struct page *page, unsigned int offset,
     unsigned int length)
{
 struct extent_io_tree *tree;
 tree = &BTRFS_I(page->mapping->host)->io_tree;
 extent_invalidatepage(tree, page, offset);
 btree_releasepage(page, GFP_NOFS);
 if (PagePrivate(page)) {
  btrfs_warn(BTRFS_I(page->mapping->host)->root->fs_info,
      "page private not zero on page %llu",
      (unsigned long long)page_offset(page));
  ClearPagePrivate(page);
  set_page_private(page, 0);
  put_page(page);
 }
}
