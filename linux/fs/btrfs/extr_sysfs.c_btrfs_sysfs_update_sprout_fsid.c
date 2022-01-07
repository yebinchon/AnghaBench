
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btrfs_fs_devices {int fs_info; int fsid_kobj; } ;


 int BTRFS_UUID_UNPARSED_SIZE ;
 int btrfs_warn (int ,char*) ;
 scalar_t__ kobject_rename (int *,char*) ;
 int snprintf (char*,int,char*,int const*) ;

void btrfs_sysfs_update_sprout_fsid(struct btrfs_fs_devices *fs_devices,
        const u8 *fsid)
{
 char fsid_buf[BTRFS_UUID_UNPARSED_SIZE];





 snprintf(fsid_buf, BTRFS_UUID_UNPARSED_SIZE, "%pU", fsid);
 if (kobject_rename(&fs_devices->fsid_kobj, fsid_buf))
  btrfs_warn(fs_devices->fs_info,
    "sysfs: failed to create fsid for sprout");
}
