
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int bytes_reserved; int * block_rsv; int transid; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int trans_block_rsv; } ;


 int ASSERT (int) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,int *,int ) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,int ,int ) ;

__attribute__((used)) static void btrfs_trans_release_metadata(struct btrfs_trans_handle *trans)

{
 struct btrfs_fs_info *fs_info = trans->fs_info;

 if (!trans->block_rsv) {
  ASSERT(!trans->bytes_reserved);
  return;
 }

 if (!trans->bytes_reserved)
  return;

 ASSERT(trans->block_rsv == &fs_info->trans_block_rsv);
 trace_btrfs_space_reservation(fs_info, "transaction",
          trans->transid, trans->bytes_reserved, 0);
 btrfs_block_rsv_release(fs_info, trans->block_rsv,
    trans->bytes_reserved);
 trans->bytes_reserved = 0;
}
