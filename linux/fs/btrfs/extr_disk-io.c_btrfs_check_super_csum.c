
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct btrfs_super_block {int csum; } ;
struct btrfs_fs_info {int csum_shash; } ;
struct TYPE_6__ {int tfm; } ;


 int BTRFS_CSUM_SIZE ;
 int BTRFS_SUPER_INFO_SIZE ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int btrfs_super_csum_size (struct btrfs_super_block*) ;
 int crypto_shash_final (TYPE_1__*,char*) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,char*,int) ;
 scalar_t__ memcmp (int ,char*,int ) ;
 TYPE_1__* shash ;

__attribute__((used)) static int btrfs_check_super_csum(struct btrfs_fs_info *fs_info,
      char *raw_disk_sb)
{
 struct btrfs_super_block *disk_sb =
  (struct btrfs_super_block *)raw_disk_sb;
 char result[BTRFS_CSUM_SIZE];
 SHASH_DESC_ON_STACK(shash, fs_info->csum_shash);

 shash->tfm = fs_info->csum_shash;
 crypto_shash_init(shash);






 crypto_shash_update(shash, raw_disk_sb + BTRFS_CSUM_SIZE,
       BTRFS_SUPER_INFO_SIZE - BTRFS_CSUM_SIZE);
 crypto_shash_final(shash, result);

 if (memcmp(disk_sb->csum, result, btrfs_super_csum_size(disk_sb)))
  return 1;

 return 0;
}
