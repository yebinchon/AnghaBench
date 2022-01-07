
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; scalar_t__ adding_csums; } ;
struct btrfs_root {struct btrfs_block_rsv* block_rsv; int state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {int dummy; } ;
struct btrfs_fs_info {struct btrfs_block_rsv empty_block_rsv; struct btrfs_root const* uuid_root; struct btrfs_root const* csum_root; } ;


 int BTRFS_ROOT_REF_COWS ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct btrfs_block_rsv *get_block_rsv(
     const struct btrfs_trans_handle *trans,
     const struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_block_rsv *block_rsv = ((void*)0);

 if (test_bit(BTRFS_ROOT_REF_COWS, &root->state) ||
     (root == fs_info->csum_root && trans->adding_csums) ||
     (root == fs_info->uuid_root))
  block_rsv = trans->block_rsv;

 if (!block_rsv)
  block_rsv = root->block_rsv;

 if (!block_rsv)
  block_rsv = &fs_info->empty_block_rsv;

 return block_rsv;
}
