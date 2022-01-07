
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int scrub_pause_off (struct btrfs_fs_info*) ;
 int scrub_pause_on (struct btrfs_fs_info*) ;

__attribute__((used)) static void scrub_blocked_if_needed(struct btrfs_fs_info *fs_info)
{
 scrub_pause_on(fs_info);
 scrub_pause_off(fs_info);
}
