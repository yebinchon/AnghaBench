
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int * stripe_hash_table; } ;


 int btrfs_clear_rbio_cache (struct btrfs_fs_info*) ;
 int kvfree (int *) ;

void btrfs_free_stripe_hash_table(struct btrfs_fs_info *info)
{
 if (!info->stripe_hash_table)
  return;
 btrfs_clear_rbio_cache(info);
 kvfree(info->stripe_hash_table);
 info->stripe_hash_table = ((void*)0);
}
