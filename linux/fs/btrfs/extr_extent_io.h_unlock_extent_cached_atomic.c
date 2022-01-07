
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;


 int EXTENT_LOCKED ;
 int GFP_ATOMIC ;
 int __clear_extent_bit (struct extent_io_tree*,int ,int ,int ,int,int ,struct extent_state**,int ,int *) ;

__attribute__((used)) static inline int unlock_extent_cached_atomic(struct extent_io_tree *tree,
  u64 start, u64 end, struct extent_state **cached)
{
 return __clear_extent_bit(tree, start, end, EXTENT_LOCKED, 1, 0, cached,
    GFP_ATOMIC, ((void*)0));
}
