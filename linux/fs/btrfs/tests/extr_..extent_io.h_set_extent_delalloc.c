
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;


 unsigned int EXTENT_DELALLOC ;
 unsigned int EXTENT_UPTODATE ;
 int GFP_NOFS ;
 int set_extent_bit (struct extent_io_tree*,int ,int ,unsigned int,int *,struct extent_state**,int ) ;

__attribute__((used)) static inline int set_extent_delalloc(struct extent_io_tree *tree, u64 start,
          u64 end, unsigned int extra_bits,
          struct extent_state **cached_state)
{
 return set_extent_bit(tree, start, end,
         EXTENT_DELALLOC | EXTENT_UPTODATE | extra_bits,
         ((void*)0), cached_state, GFP_NOFS);
}
