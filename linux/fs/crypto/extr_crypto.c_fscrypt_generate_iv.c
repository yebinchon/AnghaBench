
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union fscrypt_iv {int raw; int nonce; int lblk_num; } ;
typedef int u64 ;
struct fscrypt_info {int * ci_essiv_tfm; int ci_nonce; int ci_policy; TYPE_1__* ci_mode; } ;
struct TYPE_2__ {int ivsize; } ;


 int FS_KEY_DERIVATION_NONCE_SIZE ;
 int cpu_to_le64 (int ) ;
 int crypto_cipher_encrypt_one (int *,int ,int ) ;
 scalar_t__ fscrypt_is_direct_key_policy (int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (union fscrypt_iv*,int ,int ) ;

void fscrypt_generate_iv(union fscrypt_iv *iv, u64 lblk_num,
    const struct fscrypt_info *ci)
{
 memset(iv, 0, ci->ci_mode->ivsize);
 iv->lblk_num = cpu_to_le64(lblk_num);

 if (fscrypt_is_direct_key_policy(&ci->ci_policy))
  memcpy(iv->nonce, ci->ci_nonce, FS_KEY_DERIVATION_NONCE_SIZE);

 if (ci->ci_essiv_tfm != ((void*)0))
  crypto_cipher_encrypt_one(ci->ci_essiv_tfm, iv->raw, iv->raw);
}
