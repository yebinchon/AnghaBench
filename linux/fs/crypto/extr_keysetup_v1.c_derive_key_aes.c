
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int ENOMEM ;
 int FS_KEY_DERIVATION_NONCE_SIZE ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_alloc_skcipher (char*,int ,int ) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 int crypto_req_done ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,int ) ;
 int crypto_wait_req (int ,int *) ;
 int sg_init_one (struct scatterlist*,int const*,unsigned int) ;
 struct skcipher_request* skcipher_request_alloc (struct crypto_skcipher*,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int,int ,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int *) ;
 int wait ;

__attribute__((used)) static int derive_key_aes(const u8 *master_key,
     const u8 nonce[FS_KEY_DERIVATION_NONCE_SIZE],
     u8 *derived_key, unsigned int derived_keysize)
{
 int res = 0;
 struct skcipher_request *req = ((void*)0);
 DECLARE_CRYPTO_WAIT(wait);
 struct scatterlist src_sg, dst_sg;
 struct crypto_skcipher *tfm = crypto_alloc_skcipher("ecb(aes)", 0, 0);

 if (IS_ERR(tfm)) {
  res = PTR_ERR(tfm);
  tfm = ((void*)0);
  goto out;
 }
 crypto_skcipher_set_flags(tfm, CRYPTO_TFM_REQ_FORBID_WEAK_KEYS);
 req = skcipher_request_alloc(tfm, GFP_NOFS);
 if (!req) {
  res = -ENOMEM;
  goto out;
 }
 skcipher_request_set_callback(req,
   CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
   crypto_req_done, &wait);
 res = crypto_skcipher_setkey(tfm, nonce, FS_KEY_DERIVATION_NONCE_SIZE);
 if (res < 0)
  goto out;

 sg_init_one(&src_sg, master_key, derived_keysize);
 sg_init_one(&dst_sg, derived_key, derived_keysize);
 skcipher_request_set_crypt(req, &src_sg, &dst_sg, derived_keysize,
       ((void*)0));
 res = crypto_wait_req(crypto_skcipher_encrypt(req), &wait);
out:
 skcipher_request_free(req);
 crypto_free_skcipher(tfm);
 return res;
}
