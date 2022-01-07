
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; scalar_t__ private; } ;
struct extent_buffer {int refs_lock; int bflags; int refs; } ;
struct TYPE_2__ {int private_lock; } ;


 int BUG_ON (int) ;
 int EXTENT_BUFFER_TREE_REF ;
 int PagePrivate (struct page*) ;
 int atomic_read (int *) ;
 scalar_t__ extent_buffer_under_io (struct extent_buffer*) ;
 int release_extent_buffer (struct extent_buffer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;

int try_release_extent_buffer(struct page *page)
{
 struct extent_buffer *eb;





 spin_lock(&page->mapping->private_lock);
 if (!PagePrivate(page)) {
  spin_unlock(&page->mapping->private_lock);
  return 1;
 }

 eb = (struct extent_buffer *)page->private;
 BUG_ON(!eb);






 spin_lock(&eb->refs_lock);
 if (atomic_read(&eb->refs) != 1 || extent_buffer_under_io(eb)) {
  spin_unlock(&eb->refs_lock);
  spin_unlock(&page->mapping->private_lock);
  return 0;
 }
 spin_unlock(&page->mapping->private_lock);





 if (!test_and_clear_bit(EXTENT_BUFFER_TREE_REF, &eb->bflags)) {
  spin_unlock(&eb->refs_lock);
  return 0;
 }

 return release_extent_buffer(eb);
}
