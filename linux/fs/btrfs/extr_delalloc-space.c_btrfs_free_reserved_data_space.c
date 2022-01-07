
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {int sectorsize; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int btrfs_free_reserved_data_space_noquota (struct inode*,scalar_t__,scalar_t__) ;
 int btrfs_qgroup_free_data (struct inode*,struct extent_changeset*,scalar_t__,scalar_t__) ;
 scalar_t__ round_down (scalar_t__,int ) ;
 scalar_t__ round_up (scalar_t__,int ) ;

void btrfs_free_reserved_data_space(struct inode *inode,
   struct extent_changeset *reserved, u64 start, u64 len)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;


 len = round_up(start + len, root->fs_info->sectorsize) -
       round_down(start, root->fs_info->sectorsize);
 start = round_down(start, root->fs_info->sectorsize);

 btrfs_free_reserved_data_space_noquota(inode, start, len);
 btrfs_qgroup_free_data(inode, reserved, start, len);
}
