
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int fs_info; } ;


 int CHUNK_ALLOC_FORCE ;
 int btrfs_chunk_alloc (struct btrfs_trans_handle*,int ,int ) ;
 int btrfs_get_alloc_profile (int ,int ) ;

int btrfs_force_chunk_alloc(struct btrfs_trans_handle *trans, u64 type)
{
 u64 alloc_flags = btrfs_get_alloc_profile(trans->fs_info, type);

 return btrfs_chunk_alloc(trans, alloc_flags, CHUNK_ALLOC_FORCE);
}
