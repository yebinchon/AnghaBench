
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ecryptfs_sb_info {int mount_crypt_stat; } ;


 int ecryptfs_destroy_mount_crypt_stat (int *) ;
 int ecryptfs_sb_info_cache ;
 struct ecryptfs_sb_info* ecryptfs_superblock_to_private (struct super_block*) ;
 int kill_anon_super (struct super_block*) ;
 int kmem_cache_free (int ,struct ecryptfs_sb_info*) ;

__attribute__((used)) static void ecryptfs_kill_block_super(struct super_block *sb)
{
 struct ecryptfs_sb_info *sb_info = ecryptfs_superblock_to_private(sb);
 kill_anon_super(sb);
 if (!sb_info)
  return;
 ecryptfs_destroy_mount_crypt_stat(&sb_info->mount_crypt_stat);
 kmem_cache_free(ecryptfs_sb_info_cache, sb_info);
}
