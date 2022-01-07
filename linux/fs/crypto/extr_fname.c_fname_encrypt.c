
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fscrypt_iv {int dummy; } fscrypt_iv ;
typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct qstr {unsigned int len; int name; } ;
struct inode {struct fscrypt_info* i_crypt_info; } ;
struct fscrypt_info {struct crypto_skcipher* ci_ctfm; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DECLARE_CRYPTO_WAIT (int ) ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ WARN_ON (int) ;
 int crypto_req_done ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int crypto_wait_req (int ,int *) ;
 int fscrypt_err (struct inode*,char*,int) ;
 int fscrypt_generate_iv (union fscrypt_iv*,int ,struct fscrypt_info*) ;
 int memcpy (int *,int ,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int sg_init_one (struct scatterlist*,int *,unsigned int) ;
 struct skcipher_request* skcipher_request_alloc (struct crypto_skcipher*,int ) ;
 int skcipher_request_free (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int,int ,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,union fscrypt_iv*) ;
 int wait ;

int fname_encrypt(struct inode *inode, const struct qstr *iname,
    u8 *out, unsigned int olen)
{
 struct skcipher_request *req = ((void*)0);
 DECLARE_CRYPTO_WAIT(wait);
 struct fscrypt_info *ci = inode->i_crypt_info;
 struct crypto_skcipher *tfm = ci->ci_ctfm;
 union fscrypt_iv iv;
 struct scatterlist sg;
 int res;





 if (WARN_ON(olen < iname->len))
  return -ENOBUFS;
 memcpy(out, iname->name, iname->len);
 memset(out + iname->len, 0, olen - iname->len);


 fscrypt_generate_iv(&iv, 0, ci);


 req = skcipher_request_alloc(tfm, GFP_NOFS);
 if (!req)
  return -ENOMEM;
 skcipher_request_set_callback(req,
   CRYPTO_TFM_REQ_MAY_BACKLOG | CRYPTO_TFM_REQ_MAY_SLEEP,
   crypto_req_done, &wait);
 sg_init_one(&sg, out, olen);
 skcipher_request_set_crypt(req, &sg, &sg, olen, &iv);


 res = crypto_wait_req(crypto_skcipher_encrypt(req), &wait);
 skcipher_request_free(req);
 if (res < 0) {
  fscrypt_err(inode, "Filename encryption failed: %d", res);
  return res;
 }

 return 0;
}
