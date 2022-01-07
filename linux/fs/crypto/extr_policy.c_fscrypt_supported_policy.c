
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_policy_v2 {int flags; int __reserved; int filenames_encryption_mode; int contents_encryption_mode; } ;
struct fscrypt_policy_v1 {int flags; int filenames_encryption_mode; int contents_encryption_mode; } ;
union fscrypt_policy {int version; struct fscrypt_policy_v2 v2; struct fscrypt_policy_v1 v1; } ;
struct inode {int dummy; } ;


 int FSCRYPT_POLICY_FLAGS_VALID ;


 int fscrypt_valid_enc_modes (int ,int ) ;
 int fscrypt_warn (struct inode const*,char*,...) ;
 int memchr_inv (int ,int ,int) ;

bool fscrypt_supported_policy(const union fscrypt_policy *policy_u,
         const struct inode *inode)
{
 switch (policy_u->version) {
 case 129: {
  const struct fscrypt_policy_v1 *policy = &policy_u->v1;

  if (!fscrypt_valid_enc_modes(policy->contents_encryption_mode,
          policy->filenames_encryption_mode)) {
   fscrypt_warn(inode,
         "Unsupported encryption modes (contents %d, filenames %d)",
         policy->contents_encryption_mode,
         policy->filenames_encryption_mode);
   return 0;
  }

  if (policy->flags & ~FSCRYPT_POLICY_FLAGS_VALID) {
   fscrypt_warn(inode,
         "Unsupported encryption flags (0x%02x)",
         policy->flags);
   return 0;
  }

  return 1;
 }
 case 128: {
  const struct fscrypt_policy_v2 *policy = &policy_u->v2;

  if (!fscrypt_valid_enc_modes(policy->contents_encryption_mode,
          policy->filenames_encryption_mode)) {
   fscrypt_warn(inode,
         "Unsupported encryption modes (contents %d, filenames %d)",
         policy->contents_encryption_mode,
         policy->filenames_encryption_mode);
   return 0;
  }

  if (policy->flags & ~FSCRYPT_POLICY_FLAGS_VALID) {
   fscrypt_warn(inode,
         "Unsupported encryption flags (0x%02x)",
         policy->flags);
   return 0;
  }

  if (memchr_inv(policy->__reserved, 0,
          sizeof(policy->__reserved))) {
   fscrypt_warn(inode,
         "Reserved bits set in encryption policy");
   return 0;
  }

  return 1;
 }
 }
 return 0;
}
