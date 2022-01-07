
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_fs_info {TYPE_1__* sb; } ;
struct TYPE_2__ {int s_flags; } ;


 int SB_RDONLY ;
 scalar_t__ btrfs_fs_closing (struct btrfs_fs_info*) ;

__attribute__((used)) static inline int btrfs_need_cleaner_sleep(struct btrfs_fs_info *fs_info)
{
 return fs_info->sb->s_flags & SB_RDONLY || btrfs_fs_closing(fs_info);
}
