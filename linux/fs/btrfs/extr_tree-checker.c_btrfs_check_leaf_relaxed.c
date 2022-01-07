
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;


 int check_leaf (struct extent_buffer*,int) ;

int btrfs_check_leaf_relaxed(struct extent_buffer *leaf)
{
 return check_leaf(leaf, 0);
}
