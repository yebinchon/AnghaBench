
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int refs; int bflags; int refs_lock; } ;


 int EXTENT_BUFFER_STALE ;
 int EXTENT_BUFFER_TREE_REF ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int extent_buffer_under_io (struct extent_buffer*) ;
 int release_extent_buffer (struct extent_buffer*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void free_extent_buffer_stale(struct extent_buffer *eb)
{
 if (!eb)
  return;

 spin_lock(&eb->refs_lock);
 set_bit(EXTENT_BUFFER_STALE, &eb->bflags);

 if (atomic_read(&eb->refs) == 2 && !extent_buffer_under_io(eb) &&
     test_and_clear_bit(EXTENT_BUFFER_TREE_REF, &eb->bflags))
  atomic_dec(&eb->refs);
 release_extent_buffer(eb);
}
