
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
struct ecryptfs_mount_crypt_stat {int flags; int global_default_fn_cipher_name; } ;
struct crypto_skcipher {int dummy; } ;


 scalar_t__ ECRYPTFS_FILENAME_MIN_RANDOM_PREPEND_BYTES ;
 scalar_t__ ECRYPTFS_FNEK_ENCRYPTED_FILENAME_PREFIX_SIZE ;
 int ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES ;
 scalar_t__ ECRYPTFS_TAG_70_MAX_METADATA_SIZE ;
 long ENC_NAME_MAX_BLOCKLEN_8_OR_16 ;
 long NAME_MAX ;
 size_t crypto_skcipher_blocksize (struct crypto_skcipher*) ;
 int ecryptfs_get_tfm_and_mutex_for_cipher_name (struct crypto_skcipher**,struct mutex**,int ) ;
 int ecryptfs_max_decoded_size (long) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 scalar_t__ unlikely (int) ;

int ecryptfs_set_f_namelen(long *namelen, long lower_namelen,
      struct ecryptfs_mount_crypt_stat *mount_crypt_stat)
{
 struct crypto_skcipher *tfm;
 struct mutex *tfm_mutex;
 size_t cipher_blocksize;
 int rc;

 if (!(mount_crypt_stat->flags & ECRYPTFS_GLOBAL_ENCRYPT_FILENAMES)) {
  (*namelen) = lower_namelen;
  return 0;
 }

 rc = ecryptfs_get_tfm_and_mutex_for_cipher_name(&tfm, &tfm_mutex,
   mount_crypt_stat->global_default_fn_cipher_name);
 if (unlikely(rc)) {
  (*namelen) = 0;
  return rc;
 }

 mutex_lock(tfm_mutex);
 cipher_blocksize = crypto_skcipher_blocksize(tfm);
 mutex_unlock(tfm_mutex);


 if (lower_namelen == NAME_MAX
     && (cipher_blocksize == 8 || cipher_blocksize == 16)) {
  (*namelen) = ENC_NAME_MAX_BLOCKLEN_8_OR_16;
  return 0;
 }


 (*namelen) = lower_namelen;
 (*namelen) -= ECRYPTFS_FNEK_ENCRYPTED_FILENAME_PREFIX_SIZE;

 (*namelen) = ecryptfs_max_decoded_size(*namelen) - 3;
 (*namelen) -= ECRYPTFS_TAG_70_MAX_METADATA_SIZE;
 (*namelen) -= ECRYPTFS_FILENAME_MIN_RANDOM_PREPEND_BYTES;

 (*namelen) -= cipher_blocksize - 1;

 if ((*namelen) < 0)
  (*namelen) = 0;

 return 0;
}
