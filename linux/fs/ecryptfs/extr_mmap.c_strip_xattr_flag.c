
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int flags; } ;


 int ECRYPTFS_METADATA_IN_XATTR ;
 int ecryptfs_write_crypt_stat_flags (char*,struct ecryptfs_crypt_stat*,size_t*) ;

__attribute__((used)) static void strip_xattr_flag(char *page_virt,
        struct ecryptfs_crypt_stat *crypt_stat)
{
 if (crypt_stat->flags & ECRYPTFS_METADATA_IN_XATTR) {
  size_t written;

  crypt_stat->flags &= ~ECRYPTFS_METADATA_IN_XATTR;
  ecryptfs_write_crypt_stat_flags(page_virt, crypt_stat,
      &written);
  crypt_stat->flags |= ECRYPTFS_METADATA_IN_XATTR;
 }
}
