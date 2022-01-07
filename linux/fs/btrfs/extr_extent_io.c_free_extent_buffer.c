
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int refs; int bflags; int refs_lock; } ;


 int EXTENT_BUFFER_STALE ;
 int EXTENT_BUFFER_TREE_REF ;
 int EXTENT_BUFFER_UNMAPPED ;
 int atomic_cmpxchg (int *,int,int) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int extent_buffer_under_io (struct extent_buffer*) ;
 int release_extent_buffer (struct extent_buffer*) ;
 int spin_lock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void free_extent_buffer(struct extent_buffer *eb)
{
 int refs;
 int old;
 if (!eb)
  return;

 while (1) {
  refs = atomic_read(&eb->refs);
  if ((!test_bit(EXTENT_BUFFER_UNMAPPED, &eb->bflags) && refs <= 3)
      || (test_bit(EXTENT_BUFFER_UNMAPPED, &eb->bflags) &&
   refs == 1))
   break;
  old = atomic_cmpxchg(&eb->refs, refs, refs - 1);
  if (old == refs)
   return;
 }

 spin_lock(&eb->refs_lock);
 if (atomic_read(&eb->refs) == 2 &&
     test_bit(EXTENT_BUFFER_STALE, &eb->bflags) &&
     !extent_buffer_under_io(eb) &&
     test_and_clear_bit(EXTENT_BUFFER_TREE_REF, &eb->bflags))
  atomic_dec(&eb->refs);





 release_extent_buffer(eb);
}
