
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct extent_crypt_result* data; } ;
struct skcipher_request {TYPE_1__ base; } ;
struct scatterlist {int dummy; } ;
struct extent_crypt_result {int rc; int completion; } ;
struct ecryptfs_crypt_stat {int flags; int key_size; int cs_tfm_mutex; int key; int tfm; } ;


 int BUG_ON (int) ;
 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EBUSY ;
 int ECRYPTFS_KEY_SET ;
 int ECRYPTFS_STRUCT_INITIALIZED ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENCRYPT ;
 int ENOMEM ;
 int GFP_NOFS ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int crypto_skcipher_setkey (int ,int ,int) ;
 int ecryptfs_dump_hex (int ,int) ;
 int ecryptfs_printk (int ,char*,int) ;
 scalar_t__ ecryptfs_verbosity ;
 int extent_crypt_complete ;
 int init_completion (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 struct skcipher_request* skcipher_request_alloc (int ,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int,int ,struct extent_crypt_result*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,unsigned char*) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int crypt_scatterlist(struct ecryptfs_crypt_stat *crypt_stat,
        struct scatterlist *dst_sg,
        struct scatterlist *src_sg, int size,
        unsigned char *iv, int op)
{
 struct skcipher_request *req = ((void*)0);
 struct extent_crypt_result ecr;
 int rc = 0;

 BUG_ON(!crypt_stat || !crypt_stat->tfm
        || !(crypt_stat->flags & ECRYPTFS_STRUCT_INITIALIZED));
 if (unlikely(ecryptfs_verbosity > 0)) {
  ecryptfs_printk(KERN_DEBUG, "Key size [%zd]; key:\n",
    crypt_stat->key_size);
  ecryptfs_dump_hex(crypt_stat->key,
      crypt_stat->key_size);
 }

 init_completion(&ecr.completion);

 mutex_lock(&crypt_stat->cs_tfm_mutex);
 req = skcipher_request_alloc(crypt_stat->tfm, GFP_NOFS);
 if (!req) {
  mutex_unlock(&crypt_stat->cs_tfm_mutex);
  rc = -ENOMEM;
  goto out;
 }

 skcipher_request_set_callback(req,
   CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
   extent_crypt_complete, &ecr);

 if (!(crypt_stat->flags & ECRYPTFS_KEY_SET)) {
  rc = crypto_skcipher_setkey(crypt_stat->tfm, crypt_stat->key,
         crypt_stat->key_size);
  if (rc) {
   ecryptfs_printk(KERN_ERR,
     "Error setting key; rc = [%d]\n",
     rc);
   mutex_unlock(&crypt_stat->cs_tfm_mutex);
   rc = -EINVAL;
   goto out;
  }
  crypt_stat->flags |= ECRYPTFS_KEY_SET;
 }
 mutex_unlock(&crypt_stat->cs_tfm_mutex);
 skcipher_request_set_crypt(req, src_sg, dst_sg, size, iv);
 rc = op == ENCRYPT ? crypto_skcipher_encrypt(req) :
        crypto_skcipher_decrypt(req);
 if (rc == -EINPROGRESS || rc == -EBUSY) {
  struct extent_crypt_result *ecr = req->base.data;

  wait_for_completion(&ecr->completion);
  rc = ecr->rc;
  reinit_completion(&ecr->completion);
 }
out:
 skcipher_request_free(req);
 return rc;
}
