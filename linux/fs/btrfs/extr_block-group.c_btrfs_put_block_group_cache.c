
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct TYPE_3__ {int * inode; } ;
struct btrfs_block_group_cache {TYPE_2__ key; TYPE_1__ io_ctl; int lock; struct inode* inode; scalar_t__ iref; } ;


 int ASSERT (int ) ;
 struct btrfs_block_group_cache* btrfs_lookup_first_block_group (struct btrfs_fs_info*,scalar_t__) ;
 struct btrfs_block_group_cache* btrfs_next_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_wait_block_group_cache_done (struct btrfs_block_group_cache*) ;
 int iput (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_put_block_group_cache(struct btrfs_fs_info *info)
{
 struct btrfs_block_group_cache *block_group;
 u64 last = 0;

 while (1) {
  struct inode *inode;

  block_group = btrfs_lookup_first_block_group(info, last);
  while (block_group) {
   btrfs_wait_block_group_cache_done(block_group);
   spin_lock(&block_group->lock);
   if (block_group->iref)
    break;
   spin_unlock(&block_group->lock);
   block_group = btrfs_next_block_group(block_group);
  }
  if (!block_group) {
   if (last == 0)
    break;
   last = 0;
   continue;
  }

  inode = block_group->inode;
  block_group->iref = 0;
  block_group->inode = ((void*)0);
  spin_unlock(&block_group->lock);
  ASSERT(block_group->io_ctl.inode == ((void*)0));
  iput(inode);
  last = block_group->key.objectid + block_group->key.offset;
  btrfs_put_block_group(block_group);
 }
}
