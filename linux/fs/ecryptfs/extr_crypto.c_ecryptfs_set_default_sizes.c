
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int flags; scalar_t__ metadata_size; int iv_bytes; int extent_size; } ;


 int ECRYPTFS_DEFAULT_EXTENT_SIZE ;
 int ECRYPTFS_DEFAULT_IV_BYTES ;
 int ECRYPTFS_METADATA_IN_XATTR ;
 scalar_t__ ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE ;
 scalar_t__ PAGE_SIZE ;
 int set_extent_mask_and_shift (struct ecryptfs_crypt_stat*) ;

void ecryptfs_set_default_sizes(struct ecryptfs_crypt_stat *crypt_stat)
{


 crypt_stat->extent_size = ECRYPTFS_DEFAULT_EXTENT_SIZE;
 set_extent_mask_and_shift(crypt_stat);
 crypt_stat->iv_bytes = ECRYPTFS_DEFAULT_IV_BYTES;
 if (crypt_stat->flags & ECRYPTFS_METADATA_IN_XATTR)
  crypt_stat->metadata_size = ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE;
 else {
  if (PAGE_SIZE <= ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE)
   crypt_stat->metadata_size =
    ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE;
  else
   crypt_stat->metadata_size = PAGE_SIZE;
 }
}
