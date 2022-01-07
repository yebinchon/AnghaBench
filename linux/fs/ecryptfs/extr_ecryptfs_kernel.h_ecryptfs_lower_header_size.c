
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int flags; size_t metadata_size; } ;


 int ECRYPTFS_METADATA_IN_XATTR ;

__attribute__((used)) static inline size_t
ecryptfs_lower_header_size(struct ecryptfs_crypt_stat *crypt_stat)
{
 if (crypt_stat->flags & ECRYPTFS_METADATA_IN_XATTR)
  return 0;
 return crypt_stat->metadata_size;
}
