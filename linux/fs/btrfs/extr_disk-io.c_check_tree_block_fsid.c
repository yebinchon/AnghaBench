
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct extent_buffer {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {struct btrfs_fs_devices* seed; int * fsid; int * metadata_uuid; } ;


 int BTRFS_FSID_SIZE ;
 int METADATA_UUID ;
 scalar_t__ btrfs_fs_incompat (struct btrfs_fs_info*,int ) ;
 int btrfs_header_fsid () ;
 int memcmp (int *,int *,int) ;
 int read_extent_buffer (struct extent_buffer*,int *,int ,int) ;

__attribute__((used)) static int check_tree_block_fsid(struct extent_buffer *eb)
{
 struct btrfs_fs_info *fs_info = eb->fs_info;
 struct btrfs_fs_devices *fs_devices = fs_info->fs_devices;
 u8 fsid[BTRFS_FSID_SIZE];
 int ret = 1;

 read_extent_buffer(eb, fsid, btrfs_header_fsid(), BTRFS_FSID_SIZE);
 while (fs_devices) {
  u8 *metadata_uuid;






  if (fs_devices == fs_info->fs_devices &&
      btrfs_fs_incompat(fs_info, METADATA_UUID))
   metadata_uuid = fs_devices->metadata_uuid;
  else
   metadata_uuid = fs_devices->fsid;

  if (!memcmp(fsid, metadata_uuid, BTRFS_FSID_SIZE)) {
   ret = 0;
   break;
  }
  fs_devices = fs_devices->seed;
 }
 return ret;
}
