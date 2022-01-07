
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct inode {int dummy; } ;
struct fscrypt_mode {int logged_impl_name; int keysize; int friendly_name; int cipher_str; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {int cra_driver_name; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int ENOENT ;
 int ENOPKG ;
 struct crypto_skcipher* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_alloc_skcipher (int ,int ,int ) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 TYPE_2__* crypto_skcipher_alg (struct crypto_skcipher*) ;
 int crypto_skcipher_set_flags (struct crypto_skcipher*,int ) ;
 int crypto_skcipher_setkey (struct crypto_skcipher*,int const*,int ) ;
 int fscrypt_err (struct inode const*,char*,int ,int ) ;
 int fscrypt_warn (struct inode const*,char*,int ,int ) ;
 int pr_info (char*,int ,int ) ;
 scalar_t__ unlikely (int) ;

struct crypto_skcipher *fscrypt_allocate_skcipher(struct fscrypt_mode *mode,
        const u8 *raw_key,
        const struct inode *inode)
{
 struct crypto_skcipher *tfm;
 int err;

 tfm = crypto_alloc_skcipher(mode->cipher_str, 0, 0);
 if (IS_ERR(tfm)) {
  if (PTR_ERR(tfm) == -ENOENT) {
   fscrypt_warn(inode,
         "Missing crypto API support for %s (API name: \"%s\")",
         mode->friendly_name, mode->cipher_str);
   return ERR_PTR(-ENOPKG);
  }
  fscrypt_err(inode, "Error allocating '%s' transform: %ld",
       mode->cipher_str, PTR_ERR(tfm));
  return tfm;
 }
 if (unlikely(!mode->logged_impl_name)) {







  mode->logged_impl_name = 1;
  pr_info("fscrypt: %s using implementation \"%s\"\n",
   mode->friendly_name,
   crypto_skcipher_alg(tfm)->base.cra_driver_name);
 }
 crypto_skcipher_set_flags(tfm, CRYPTO_TFM_REQ_FORBID_WEAK_KEYS);
 err = crypto_skcipher_setkey(tfm, raw_key, mode->keysize);
 if (err)
  goto err_free_tfm;

 return tfm;

err_free_tfm:
 crypto_free_skcipher(tfm);
 return ERR_PTR(err);
}
