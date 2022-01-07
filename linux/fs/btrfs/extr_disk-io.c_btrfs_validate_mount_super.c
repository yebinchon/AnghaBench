
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int super_copy; } ;


 int validate_super (struct btrfs_fs_info*,int ,int ) ;

__attribute__((used)) static int btrfs_validate_mount_super(struct btrfs_fs_info *fs_info)
{
 return validate_super(fs_info, fs_info->super_copy, 0);
}
