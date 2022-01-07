
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fscrypt_info {struct crypto_cipher* ci_essiv_tfm; TYPE_1__* ci_mode; } ;
struct crypto_cipher {int dummy; } ;
typedef int salt ;
struct TYPE_2__ {scalar_t__ ivsize; } ;


 scalar_t__ AES_BLOCK_SIZE ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct crypto_cipher*) ;
 int PTR_ERR (struct crypto_cipher*) ;
 int SHA256_DIGEST_SIZE ;
 scalar_t__ WARN_ON (int) ;
 struct crypto_cipher* crypto_alloc_cipher (char*,int ,int ) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int *,int) ;
 int derive_essiv_salt (int const*,int,int *) ;
 int memzero_explicit (int *,int) ;

__attribute__((used)) static int init_essiv_generator(struct fscrypt_info *ci, const u8 *raw_key,
    int keysize)
{
 int err;
 struct crypto_cipher *essiv_tfm;
 u8 salt[SHA256_DIGEST_SIZE];

 if (WARN_ON(ci->ci_mode->ivsize != AES_BLOCK_SIZE))
  return -EINVAL;

 essiv_tfm = crypto_alloc_cipher("aes", 0, 0);
 if (IS_ERR(essiv_tfm))
  return PTR_ERR(essiv_tfm);

 ci->ci_essiv_tfm = essiv_tfm;

 err = derive_essiv_salt(raw_key, keysize, salt);
 if (err)
  goto out;






 err = crypto_cipher_setkey(essiv_tfm, salt, sizeof(salt));
 if (err)
  goto out;

out:
 memzero_explicit(salt, sizeof(salt));
 return err;
}
