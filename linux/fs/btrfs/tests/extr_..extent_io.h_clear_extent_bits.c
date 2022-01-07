
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_io_tree {int dummy; } ;


 unsigned int EXTENT_LOCKED ;
 int clear_extent_bit (struct extent_io_tree*,int ,int ,unsigned int,int,int ,int *) ;

__attribute__((used)) static inline int clear_extent_bits(struct extent_io_tree *tree, u64 start,
  u64 end, unsigned bits)
{
 int wake = 0;

 if (bits & EXTENT_LOCKED)
  wake = 1;

 return clear_extent_bit(tree, start, end, bits, wake, 0, ((void*)0));
}
