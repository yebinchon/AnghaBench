
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int * pages; int bflags; int refs; } ;


 int ASSERT (int ) ;
 int EXTENT_BUFFER_DIRTY ;
 int EXTENT_BUFFER_TREE_REF ;
 int PageDirty (int ) ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int check_buffer_tree_ref (struct extent_buffer*) ;
 int num_extent_pages (struct extent_buffer*) ;
 int set_page_dirty (int ) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

bool set_extent_buffer_dirty(struct extent_buffer *eb)
{
 int i;
 int num_pages;
 bool was_dirty;

 check_buffer_tree_ref(eb);

 was_dirty = test_and_set_bit(EXTENT_BUFFER_DIRTY, &eb->bflags);

 num_pages = num_extent_pages(eb);
 WARN_ON(atomic_read(&eb->refs) == 0);
 WARN_ON(!test_bit(EXTENT_BUFFER_TREE_REF, &eb->bflags));

 if (!was_dirty)
  for (i = 0; i < num_pages; i++)
   set_page_dirty(eb->pages[i]);






 return was_dirty;
}
