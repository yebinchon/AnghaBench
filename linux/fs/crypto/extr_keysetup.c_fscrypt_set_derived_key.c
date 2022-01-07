
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fscrypt_mode {int keysize; scalar_t__ needs_essiv; } ;
struct fscrypt_info {int ci_inode; struct crypto_skcipher* ci_ctfm; struct fscrypt_mode* ci_mode; } ;
struct crypto_skcipher {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 struct crypto_skcipher* fscrypt_allocate_skcipher (struct fscrypt_mode*,int const*,int ) ;
 int fscrypt_warn (int ,char*,int) ;
 int init_essiv_generator (struct fscrypt_info*,int const*,int ) ;

int fscrypt_set_derived_key(struct fscrypt_info *ci, const u8 *derived_key)
{
 struct fscrypt_mode *mode = ci->ci_mode;
 struct crypto_skcipher *ctfm;
 int err;

 ctfm = fscrypt_allocate_skcipher(mode, derived_key, ci->ci_inode);
 if (IS_ERR(ctfm))
  return PTR_ERR(ctfm);

 ci->ci_ctfm = ctfm;

 if (mode->needs_essiv) {
  err = init_essiv_generator(ci, derived_key, mode->keysize);
  if (err) {
   fscrypt_warn(ci->ci_inode,
         "Error initializing ESSIV generator: %d",
         err);
   return err;
  }
 }
 return 0;
}
