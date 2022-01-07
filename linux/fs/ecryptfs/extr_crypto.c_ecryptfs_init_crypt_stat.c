
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int flags; struct crypto_shash* hash_tfm; int cs_tfm_mutex; int cs_mutex; int keysig_list_mutex; int keysig_list; } ;
struct crypto_shash {int dummy; } ;


 int ECRYPTFS_DEFAULT_HASH ;
 int ECRYPTFS_STRUCT_INITIALIZED ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int KERN_ERR ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (int ,int ,int ) ;
 int ecryptfs_printk (int ,char*,int) ;
 int memset (void*,int ,int) ;
 int mutex_init (int *) ;

int ecryptfs_init_crypt_stat(struct ecryptfs_crypt_stat *crypt_stat)
{
 struct crypto_shash *tfm;
 int rc;

 tfm = crypto_alloc_shash(ECRYPTFS_DEFAULT_HASH, 0, 0);
 if (IS_ERR(tfm)) {
  rc = PTR_ERR(tfm);
  ecryptfs_printk(KERN_ERR, "Error attempting to "
    "allocate crypto context; rc = [%d]\n",
    rc);
  return rc;
 }

 memset((void *)crypt_stat, 0, sizeof(struct ecryptfs_crypt_stat));
 INIT_LIST_HEAD(&crypt_stat->keysig_list);
 mutex_init(&crypt_stat->keysig_list_mutex);
 mutex_init(&crypt_stat->cs_mutex);
 mutex_init(&crypt_stat->cs_tfm_mutex);
 crypt_stat->hash_tfm = tfm;
 crypt_stat->flags |= ECRYPTFS_STRUCT_INITIALIZED;

 return 0;
}
