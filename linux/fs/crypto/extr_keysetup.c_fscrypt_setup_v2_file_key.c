
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int hkdf; } ;
struct fscrypt_master_key {TYPE_1__ mk_secret; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_2__ v2; } ;
struct fscrypt_info {TYPE_4__* ci_mode; int ci_nonce; int ci_inode; TYPE_3__ ci_policy; } ;
struct TYPE_8__ {int keysize; int friendly_name; } ;


 int EINVAL ;
 int FSCRYPT_MAX_KEY_SIZE ;
 int FSCRYPT_POLICY_FLAG_DIRECT_KEY ;
 int FS_KEY_DERIVATION_NONCE_SIZE ;
 int HKDF_CONTEXT_PER_FILE_KEY ;
 int fscrypt_hkdf_expand (int *,int ,int ,int ,int *,int ) ;
 int fscrypt_mode_supports_direct_key (TYPE_4__*) ;
 int fscrypt_set_derived_key (struct fscrypt_info*,int *) ;
 int fscrypt_warn (int ,char*,int ) ;
 int memzero_explicit (int *,int ) ;
 int setup_per_mode_key (struct fscrypt_info*,struct fscrypt_master_key*) ;

__attribute__((used)) static int fscrypt_setup_v2_file_key(struct fscrypt_info *ci,
         struct fscrypt_master_key *mk)
{
 u8 derived_key[FSCRYPT_MAX_KEY_SIZE];
 int err;

 if (ci->ci_policy.v2.flags & FSCRYPT_POLICY_FLAG_DIRECT_KEY) {
  if (!fscrypt_mode_supports_direct_key(ci->ci_mode)) {
   fscrypt_warn(ci->ci_inode,
         "Direct key flag not allowed with %s",
         ci->ci_mode->friendly_name);
   return -EINVAL;
  }
  return setup_per_mode_key(ci, mk);
 }

 err = fscrypt_hkdf_expand(&mk->mk_secret.hkdf,
      HKDF_CONTEXT_PER_FILE_KEY,
      ci->ci_nonce, FS_KEY_DERIVATION_NONCE_SIZE,
      derived_key, ci->ci_mode->keysize);
 if (err)
  return err;

 err = fscrypt_set_derived_key(ci, derived_key);
 memzero_explicit(derived_key, ci->ci_mode->keysize);
 return err;
}
