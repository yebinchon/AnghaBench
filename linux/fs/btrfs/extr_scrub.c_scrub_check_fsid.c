
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scrub_page {TYPE_1__* dev; } ;
struct btrfs_fs_devices {int fsid; } ;
struct TYPE_2__ {struct btrfs_fs_devices* fs_devices; } ;


 int BTRFS_FSID_SIZE ;
 int memcmp (int *,int ,int ) ;

__attribute__((used)) static inline int scrub_check_fsid(u8 fsid[],
       struct scrub_page *spage)
{
 struct btrfs_fs_devices *fs_devices = spage->dev->fs_devices;
 int ret;

 ret = memcmp(fsid, fs_devices->fsid, BTRFS_FSID_SIZE);
 return !ret;
}
