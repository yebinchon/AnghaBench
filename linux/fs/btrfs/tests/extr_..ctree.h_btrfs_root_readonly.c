
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct btrfs_root {TYPE_1__ root_item; } ;


 int BTRFS_ROOT_SUBVOL_RDONLY ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static inline bool btrfs_root_readonly(const struct btrfs_root *root)
{
 return (root->root_item.flags & cpu_to_le64(BTRFS_ROOT_SUBVOL_RDONLY)) != 0;
}
