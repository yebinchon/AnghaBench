
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_mount_crypt_stat {int flags; } ;
struct ecryptfs_crypt_stat {int flags; } ;


 int ECRYPTFS_ENCFN_USE_FEK ;
 int ECRYPTFS_ENCFN_USE_MOUNT_FNEK ;
 int ECRYPTFS_ENCRYPTED_VIEW_ENABLED ;
 int ECRYPTFS_ENCRYPT_FILENAMES ;
 int ECRYPTFS_GLOBAL_ENCFN_USE_FEK ;
 int ECRYPTFS_GLOBAL_ENCFN_USE_MOUNT_FNEK ;
 int ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES ;
 int ECRYPTFS_METADATA_IN_XATTR ;
 int ECRYPTFS_VIEW_AS_ENCRYPTED ;
 int ECRYPTFS_XATTR_METADATA_ENABLED ;

__attribute__((used)) static void ecryptfs_copy_mount_wide_flags_to_inode_flags(
 struct ecryptfs_crypt_stat *crypt_stat,
 struct ecryptfs_mount_crypt_stat *mount_crypt_stat)
{
 if (mount_crypt_stat->flags & ECRYPTFS_XATTR_METADATA_ENABLED)
  crypt_stat->flags |= ECRYPTFS_METADATA_IN_XATTR;
 if (mount_crypt_stat->flags & ECRYPTFS_ENCRYPTED_VIEW_ENABLED)
  crypt_stat->flags |= ECRYPTFS_VIEW_AS_ENCRYPTED;
 if (mount_crypt_stat->flags & ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES) {
  crypt_stat->flags |= ECRYPTFS_ENCRYPT_FILENAMES;
  if (mount_crypt_stat->flags
      & ECRYPTFS_GLOBAL_ENCFN_USE_MOUNT_FNEK)
   crypt_stat->flags |= ECRYPTFS_ENCFN_USE_MOUNT_FNEK;
  else if (mount_crypt_stat->flags
    & ECRYPTFS_GLOBAL_ENCFN_USE_FEK)
   crypt_stat->flags |= ECRYPTFS_ENCFN_USE_FEK;
 }
}
