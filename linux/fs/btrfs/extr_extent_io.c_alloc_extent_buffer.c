
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct page {scalar_t__ private; } ;
struct extent_buffer {struct page** pages; int refs; int bflags; } ;
struct btrfs_fs_info {unsigned long nodesize; int buffer_lock; int buffer_radix; int sectorsize; TYPE_1__* btree_inode; } ;
struct address_space {int private_lock; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int ClearPagePrivate (struct page*) ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 struct extent_buffer* ERR_PTR (int) ;
 int EXTENT_BUFFER_IN_TREE ;
 int EXTENT_BUFFER_UPTODATE ;
 int GFP_NOFS ;
 int IS_ALIGNED (unsigned long,int ) ;
 unsigned long PAGE_SHIFT ;
 int PageDirty (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int PageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int __GFP_NOFAIL ;
 struct extent_buffer* __alloc_extent_buffer (struct btrfs_fs_info*,unsigned long,unsigned long) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_inc_not_zero (int *) ;
 int attach_extent_buffer_page (struct extent_buffer*,struct page*) ;
 int btrfs_err (struct btrfs_fs_info*,char*,unsigned long) ;
 int btrfs_release_extent_buffer (struct extent_buffer*) ;
 int check_buffer_tree_ref (struct extent_buffer*) ;
 struct extent_buffer* find_extent_buffer (struct btrfs_fs_info*,unsigned long) ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int) ;
 int mark_extent_buffer_accessed (struct extent_buffer*,struct page*) ;
 int num_extent_pages (struct extent_buffer*) ;
 int put_page (struct page*) ;
 int radix_tree_insert (int *,unsigned long,struct extent_buffer*) ;
 int radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;

struct extent_buffer *alloc_extent_buffer(struct btrfs_fs_info *fs_info,
       u64 start)
{
 unsigned long len = fs_info->nodesize;
 int num_pages;
 int i;
 unsigned long index = start >> PAGE_SHIFT;
 struct extent_buffer *eb;
 struct extent_buffer *exists = ((void*)0);
 struct page *p;
 struct address_space *mapping = fs_info->btree_inode->i_mapping;
 int uptodate = 1;
 int ret;

 if (!IS_ALIGNED(start, fs_info->sectorsize)) {
  btrfs_err(fs_info, "bad tree block start %llu", start);
  return ERR_PTR(-EINVAL);
 }

 eb = find_extent_buffer(fs_info, start);
 if (eb)
  return eb;

 eb = __alloc_extent_buffer(fs_info, start, len);
 if (!eb)
  return ERR_PTR(-ENOMEM);

 num_pages = num_extent_pages(eb);
 for (i = 0; i < num_pages; i++, index++) {
  p = find_or_create_page(mapping, index, GFP_NOFS|__GFP_NOFAIL);
  if (!p) {
   exists = ERR_PTR(-ENOMEM);
   goto free_eb;
  }

  spin_lock(&mapping->private_lock);
  if (PagePrivate(p)) {







   exists = (struct extent_buffer *)p->private;
   if (atomic_inc_not_zero(&exists->refs)) {
    spin_unlock(&mapping->private_lock);
    unlock_page(p);
    put_page(p);
    mark_extent_buffer_accessed(exists, p);
    goto free_eb;
   }
   exists = ((void*)0);





   ClearPagePrivate(p);
   WARN_ON(PageDirty(p));
   put_page(p);
  }
  attach_extent_buffer_page(eb, p);
  spin_unlock(&mapping->private_lock);
  WARN_ON(PageDirty(p));
  eb->pages[i] = p;
  if (!PageUptodate(p))
   uptodate = 0;
 }
 if (uptodate)
  set_bit(EXTENT_BUFFER_UPTODATE, &eb->bflags);
again:
 ret = radix_tree_preload(GFP_NOFS);
 if (ret) {
  exists = ERR_PTR(ret);
  goto free_eb;
 }

 spin_lock(&fs_info->buffer_lock);
 ret = radix_tree_insert(&fs_info->buffer_radix,
    start >> PAGE_SHIFT, eb);
 spin_unlock(&fs_info->buffer_lock);
 radix_tree_preload_end();
 if (ret == -EEXIST) {
  exists = find_extent_buffer(fs_info, start);
  if (exists)
   goto free_eb;
  else
   goto again;
 }

 check_buffer_tree_ref(eb);
 set_bit(EXTENT_BUFFER_IN_TREE, &eb->bflags);






 for (i = 0; i < num_pages; i++)
  unlock_page(eb->pages[i]);
 return eb;

free_eb:
 WARN_ON(!atomic_dec_and_test(&eb->refs));
 for (i = 0; i < num_pages; i++) {
  if (eb->pages[i])
   unlock_page(eb->pages[i]);
 }

 btrfs_release_extent_buffer(eb);
 return exists;
}
