
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ reloc_root; TYPE_1__ root_key; int state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int reloc_ctl; } ;


 int BTRFS_ROOT_REF_COWS ;
 scalar_t__ BTRFS_TREE_RELOC_OBJECTID ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool need_reserve_reloc_root(struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (!fs_info->reloc_ctl ||
     !test_bit(BTRFS_ROOT_REF_COWS, &root->state) ||
     root->root_key.objectid == BTRFS_TREE_RELOC_OBJECTID ||
     root->reloc_root)
  return 0;

 return 1;
}
