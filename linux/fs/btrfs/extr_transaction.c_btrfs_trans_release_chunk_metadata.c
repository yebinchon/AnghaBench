
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int chunk_bytes_reserved; int new_bgs; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int chunk_block_rsv; } ;


 int WARN_ON_ONCE (int) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,int *,int ) ;
 int list_empty (int *) ;

void btrfs_trans_release_chunk_metadata(struct btrfs_trans_handle *trans)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;

 if (!trans->chunk_bytes_reserved)
  return;

 WARN_ON_ONCE(!list_empty(&trans->new_bgs));

 btrfs_block_rsv_release(fs_info, &fs_info->chunk_block_rsv,
    trans->chunk_bytes_reserved);
 trans->chunk_bytes_reserved = 0;
}
