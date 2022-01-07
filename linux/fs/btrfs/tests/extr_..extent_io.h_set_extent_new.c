
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_io_tree {int dummy; } ;


 int EXTENT_NEW ;
 int GFP_NOFS ;
 int set_extent_bit (struct extent_io_tree*,int ,int ,int ,int *,int *,int ) ;

__attribute__((used)) static inline int set_extent_new(struct extent_io_tree *tree, u64 start,
  u64 end)
{
 return set_extent_bit(tree, start, end, EXTENT_NEW, ((void*)0), ((void*)0),
   GFP_NOFS);
}
