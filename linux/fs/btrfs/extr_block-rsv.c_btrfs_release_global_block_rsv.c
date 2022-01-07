
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {scalar_t__ reserved; scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ reserved; } ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ reserved; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ reserved; } ;
struct btrfs_fs_info {TYPE_4__ delayed_refs_rsv; TYPE_3__ delayed_block_rsv; TYPE_2__ chunk_block_rsv; TYPE_1__ trans_block_rsv; int global_block_rsv; } ;


 int WARN_ON (int) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,int *,int ) ;

void btrfs_release_global_block_rsv(struct btrfs_fs_info *fs_info)
{
 btrfs_block_rsv_release(fs_info, &fs_info->global_block_rsv, (u64)-1);
 WARN_ON(fs_info->trans_block_rsv.size > 0);
 WARN_ON(fs_info->trans_block_rsv.reserved > 0);
 WARN_ON(fs_info->chunk_block_rsv.size > 0);
 WARN_ON(fs_info->chunk_block_rsv.reserved > 0);
 WARN_ON(fs_info->delayed_block_rsv.size > 0);
 WARN_ON(fs_info->delayed_block_rsv.reserved > 0);
 WARN_ON(fs_info->delayed_refs_rsv.reserved > 0);
 WARN_ON(fs_info->delayed_refs_rsv.size > 0);
}
