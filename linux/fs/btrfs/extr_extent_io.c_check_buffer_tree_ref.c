
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int refs_lock; int refs; int bflags; } ;


 int EXTENT_BUFFER_TREE_REF ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void check_buffer_tree_ref(struct extent_buffer *eb)
{
 int refs;
 refs = atomic_read(&eb->refs);
 if (refs >= 2 && test_bit(EXTENT_BUFFER_TREE_REF, &eb->bflags))
  return;

 spin_lock(&eb->refs_lock);
 if (!test_and_set_bit(EXTENT_BUFFER_TREE_REF, &eb->bflags))
  atomic_inc(&eb->refs);
 spin_unlock(&eb->refs_lock);
}
