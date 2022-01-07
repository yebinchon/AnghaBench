
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fscrypt_iv {int dummy; } fscrypt_iv ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct inode {struct fscrypt_info* i_crypt_info; } ;
struct fscrypt_str {int len; int name; } ;
struct fscrypt_info {struct crypto_skcipher* ci_ctfm; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int crypto_req_done ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_wait_req (int ,int *) ;
 int fscrypt_err (struct inode*,char*,int) ;
 int fscrypt_generate_iv (union fscrypt_iv*,int ,struct fscrypt_info*) ;
 int sg_init_one (struct scatterlist*,int ,int ) ;
 struct skcipher_request* skcipher_request_alloc (struct crypto_skcipher*,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int,int ,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int ,union fscrypt_iv*) ;
 int strnlen (int ,int ) ;
 int wait ;

__attribute__((used)) static int fname_decrypt(struct inode *inode,
    const struct fscrypt_str *iname,
    struct fscrypt_str *oname)
{
 struct skcipher_request *req = ((void*)0);
 DECLARE_CRYPTO_WAIT(wait);
 struct scatterlist src_sg, dst_sg;
 struct fscrypt_info *ci = inode->i_crypt_info;
 struct crypto_skcipher *tfm = ci->ci_ctfm;
 union fscrypt_iv iv;
 int res;


 req = skcipher_request_alloc(tfm, GFP_NOFS);
 if (!req)
  return -ENOMEM;
 skcipher_request_set_callback(req,
  CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
  crypto_req_done, &wait);


 fscrypt_generate_iv(&iv, 0, ci);


 sg_init_one(&src_sg, iname->name, iname->len);
 sg_init_one(&dst_sg, oname->name, oname->len);
 skcipher_request_set_crypt(req, &src_sg, &dst_sg, iname->len, &iv);
 res = crypto_wait_req(crypto_skcipher_decrypt(req), &wait);
 skcipher_request_free(req);
 if (res < 0) {
  fscrypt_err(inode, "Filename decryption failed: %d", res);
  return res;
 }

 oname->len = strnlen(oname->name, iname->len);
 return 0;
}
