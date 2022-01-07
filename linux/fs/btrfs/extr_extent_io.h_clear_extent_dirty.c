
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;


 int EXTENT_DELALLOC ;
 int EXTENT_DIRTY ;
 int EXTENT_DO_ACCOUNTING ;
 int clear_extent_bit (struct extent_io_tree*,int ,int ,int,int ,int ,struct extent_state**) ;

__attribute__((used)) static inline int clear_extent_dirty(struct extent_io_tree *tree, u64 start,
         u64 end, struct extent_state **cached)
{
 return clear_extent_bit(tree, start, end,
    EXTENT_DIRTY | EXTENT_DELALLOC |
    EXTENT_DO_ACCOUNTING, 0, 0, cached);
}
