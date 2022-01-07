
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ private; } ;
struct extent_buffer {int refs; int bflags; } ;


 int BUG_ON (int) ;
 int EXTENT_BUFFER_DIRTY ;
 int PagePrivate (struct page*) ;
 int __set_page_dirty_nobuffers (struct page*) ;
 int atomic_read (int *) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int btree_set_page_dirty(struct page *page)
{
 return __set_page_dirty_nobuffers(page);
}
