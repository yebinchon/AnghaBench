
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_mount_crypt_stat {int dummy; } ;
struct ecryptfs_crypt_stat {struct ecryptfs_mount_crypt_stat* mount_crypt_stat; int file_version; int flags; int key_size; int cipher; } ;


 int ECRYPTFS_DEFAULT_CIPHER ;
 int ECRYPTFS_DEFAULT_KEY_BYTES ;
 int ECRYPTFS_FILE_VERSION ;
 int ECRYPTFS_KEY_VALID ;
 int ecryptfs_copy_mount_wide_flags_to_inode_flags (struct ecryptfs_crypt_stat*,struct ecryptfs_mount_crypt_stat*) ;
 int ecryptfs_set_default_sizes (struct ecryptfs_crypt_stat*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ecryptfs_set_default_crypt_stat_vals(
 struct ecryptfs_crypt_stat *crypt_stat,
 struct ecryptfs_mount_crypt_stat *mount_crypt_stat)
{
 ecryptfs_copy_mount_wide_flags_to_inode_flags(crypt_stat,
            mount_crypt_stat);
 ecryptfs_set_default_sizes(crypt_stat);
 strcpy(crypt_stat->cipher, ECRYPTFS_DEFAULT_CIPHER);
 crypt_stat->key_size = ECRYPTFS_DEFAULT_KEY_BYTES;
 crypt_stat->flags &= ~(ECRYPTFS_KEY_VALID);
 crypt_stat->file_version = ECRYPTFS_FILE_VERSION;
 crypt_stat->mount_crypt_stat = mount_crypt_stat;
}
