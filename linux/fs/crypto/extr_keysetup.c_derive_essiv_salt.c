
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_4__ {struct crypto_shash* tfm; } ;


 int ENOENT ;
 int ENOPKG ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* READ_ONCE (int ) ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,struct crypto_shash*) ;
 struct crypto_shash* cmpxchg (int *,int *,struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_digest (TYPE_1__*,int const*,int,int *) ;
 TYPE_1__* desc ;
 int essiv_hash_tfm ;
 int fscrypt_err (int *,char*,int) ;
 int fscrypt_warn (int *,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int derive_essiv_salt(const u8 *key, int keysize, u8 *salt)
{
 struct crypto_shash *tfm = READ_ONCE(essiv_hash_tfm);


 if (unlikely(!tfm)) {
  struct crypto_shash *prev_tfm;

  tfm = crypto_alloc_shash("sha256", 0, 0);
  if (IS_ERR(tfm)) {
   if (PTR_ERR(tfm) == -ENOENT) {
    fscrypt_warn(((void*)0),
          "Missing crypto API support for SHA-256");
    return -ENOPKG;
   }
   fscrypt_err(((void*)0),
        "Error allocating SHA-256 transform: %ld",
        PTR_ERR(tfm));
   return PTR_ERR(tfm);
  }
  prev_tfm = cmpxchg(&essiv_hash_tfm, ((void*)0), tfm);
  if (prev_tfm) {
   crypto_free_shash(tfm);
   tfm = prev_tfm;
  }
 }

 {
  SHASH_DESC_ON_STACK(desc, tfm);
  desc->tfm = tfm;

  return crypto_shash_digest(desc, key, keysize, salt);
 }
}
