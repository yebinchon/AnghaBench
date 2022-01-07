
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int key_size; int cs_tfm_mutex; int * tfm; int cipher; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int PTR_ERR (int *) ;
 int * crypto_alloc_skcipher (char*,int ,int ) ;
 int crypto_skcipher_set_flags (int *,int ) ;
 int ecryptfs_crypto_api_algify_cipher_name (char**,int ,char*) ;
 int ecryptfs_printk (int ,char*,char*,...) ;
 int kfree (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strlen (int ) ;

int ecryptfs_init_crypt_ctx(struct ecryptfs_crypt_stat *crypt_stat)
{
 char *full_alg_name;
 int rc = -EINVAL;

 ecryptfs_printk(KERN_DEBUG,
   "Initializing cipher [%s]; strlen = [%d]; "
   "key_size_bits = [%zd]\n",
   crypt_stat->cipher, (int)strlen(crypt_stat->cipher),
   crypt_stat->key_size << 3);
 mutex_lock(&crypt_stat->cs_tfm_mutex);
 if (crypt_stat->tfm) {
  rc = 0;
  goto out_unlock;
 }
 rc = ecryptfs_crypto_api_algify_cipher_name(&full_alg_name,
          crypt_stat->cipher, "cbc");
 if (rc)
  goto out_unlock;
 crypt_stat->tfm = crypto_alloc_skcipher(full_alg_name, 0, 0);
 if (IS_ERR(crypt_stat->tfm)) {
  rc = PTR_ERR(crypt_stat->tfm);
  crypt_stat->tfm = ((void*)0);
  ecryptfs_printk(KERN_ERR, "cryptfs: init_crypt_ctx(): "
    "Error initializing cipher [%s]\n",
    full_alg_name);
  goto out_free;
 }
 crypto_skcipher_set_flags(crypt_stat->tfm,
      CRYPTO_TFM_REQ_FORBID_WEAK_KEYS);
 rc = 0;
out_free:
 kfree(full_alg_name);
out_unlock:
 mutex_unlock(&crypt_stat->cs_tfm_mutex);
 return rc;
}
