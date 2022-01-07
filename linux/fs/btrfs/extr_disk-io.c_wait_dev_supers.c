
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct buffer_head {int dummy; } ;
struct btrfs_device {scalar_t__ commit_total_bytes; int devid; int fs_info; int bdev; } ;


 int BTRFS_BDEV_BLOCKSIZE ;
 scalar_t__ BTRFS_SUPER_INFO_SIZE ;
 int BTRFS_SUPER_MIRROR_MAX ;
 struct buffer_head* __find_get_block (int ,int,scalar_t__) ;
 int brelse (struct buffer_head*) ;
 int btrfs_err (int ,char*,int ) ;
 int btrfs_sb_offset (int) ;
 int buffer_uptodate (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int wait_dev_supers(struct btrfs_device *device, int max_mirrors)
{
 struct buffer_head *bh;
 int i;
 int errors = 0;
 bool primary_failed = 0;
 u64 bytenr;

 if (max_mirrors == 0)
  max_mirrors = BTRFS_SUPER_MIRROR_MAX;

 for (i = 0; i < max_mirrors; i++) {
  bytenr = btrfs_sb_offset(i);
  if (bytenr + BTRFS_SUPER_INFO_SIZE >=
      device->commit_total_bytes)
   break;

  bh = __find_get_block(device->bdev,
          bytenr / BTRFS_BDEV_BLOCKSIZE,
          BTRFS_SUPER_INFO_SIZE);
  if (!bh) {
   errors++;
   if (i == 0)
    primary_failed = 1;
   continue;
  }
  wait_on_buffer(bh);
  if (!buffer_uptodate(bh)) {
   errors++;
   if (i == 0)
    primary_failed = 1;
  }


  brelse(bh);


  brelse(bh);
 }


 if (primary_failed) {
  btrfs_err(device->fs_info, "error writing primary super block to device %llu",
     device->devid);
  return -1;
 }

 return errors < i ? 0 : -1;
}
