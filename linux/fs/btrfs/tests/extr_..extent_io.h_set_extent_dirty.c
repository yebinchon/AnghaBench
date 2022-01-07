
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_io_tree {int dummy; } ;
typedef int gfp_t ;


 int EXTENT_DIRTY ;
 int set_extent_bit (struct extent_io_tree*,int ,int ,int ,int *,int *,int ) ;

__attribute__((used)) static inline int set_extent_dirty(struct extent_io_tree *tree, u64 start,
  u64 end, gfp_t mask)
{
 return set_extent_bit(tree, start, end, EXTENT_DIRTY, ((void*)0),
         ((void*)0), mask);
}
