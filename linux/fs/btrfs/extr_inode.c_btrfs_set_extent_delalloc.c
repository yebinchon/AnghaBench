
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct TYPE_2__ {int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int PAGE_ALIGNED (int ) ;
 int WARN_ON (int ) ;
 int set_extent_delalloc (int *,int ,int ,unsigned int,struct extent_state**) ;

int btrfs_set_extent_delalloc(struct inode *inode, u64 start, u64 end,
         unsigned int extra_bits,
         struct extent_state **cached_state)
{
 WARN_ON(PAGE_ALIGNED(end));
 return set_extent_delalloc(&BTRFS_I(inode)->io_tree, start, end,
       extra_bits, cached_state);
}
