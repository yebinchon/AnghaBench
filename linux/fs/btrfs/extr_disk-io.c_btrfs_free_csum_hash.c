
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int csum_shash; } ;


 int crypto_free_shash (int ) ;

__attribute__((used)) static void btrfs_free_csum_hash(struct btrfs_fs_info *fs_info)
{
 crypto_free_shash(fs_info->csum_shash);
}
