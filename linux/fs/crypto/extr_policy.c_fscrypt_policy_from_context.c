
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_policy_v2 {int master_key_identifier; int __reserved; int flags; int filenames_encryption_mode; int contents_encryption_mode; int version; } ;
struct fscrypt_policy_v1 {int master_key_descriptor; int flags; int filenames_encryption_mode; int contents_encryption_mode; int version; } ;
union fscrypt_policy {struct fscrypt_policy_v2 v2; struct fscrypt_policy_v1 v1; } ;
struct fscrypt_context_v2 {int master_key_identifier; int __reserved; int flags; int filenames_encryption_mode; int contents_encryption_mode; } ;
struct fscrypt_context_v1 {int master_key_descriptor; int flags; int filenames_encryption_mode; int contents_encryption_mode; } ;
union fscrypt_context {int version; struct fscrypt_context_v2 v2; struct fscrypt_context_v1 v1; } ;


 int EINVAL ;


 int FSCRYPT_POLICY_V1 ;
 int FSCRYPT_POLICY_V2 ;
 int fscrypt_context_size (union fscrypt_context const*) ;
 int memcpy (int ,int ,int) ;
 int memset (union fscrypt_policy*,int ,int) ;

int fscrypt_policy_from_context(union fscrypt_policy *policy_u,
    const union fscrypt_context *ctx_u,
    int ctx_size)
{
 memset(policy_u, 0, sizeof(*policy_u));

 if (ctx_size <= 0 || ctx_size != fscrypt_context_size(ctx_u))
  return -EINVAL;

 switch (ctx_u->version) {
 case 129: {
  const struct fscrypt_context_v1 *ctx = &ctx_u->v1;
  struct fscrypt_policy_v1 *policy = &policy_u->v1;

  policy->version = FSCRYPT_POLICY_V1;
  policy->contents_encryption_mode =
   ctx->contents_encryption_mode;
  policy->filenames_encryption_mode =
   ctx->filenames_encryption_mode;
  policy->flags = ctx->flags;
  memcpy(policy->master_key_descriptor,
         ctx->master_key_descriptor,
         sizeof(policy->master_key_descriptor));
  return 0;
 }
 case 128: {
  const struct fscrypt_context_v2 *ctx = &ctx_u->v2;
  struct fscrypt_policy_v2 *policy = &policy_u->v2;

  policy->version = FSCRYPT_POLICY_V2;
  policy->contents_encryption_mode =
   ctx->contents_encryption_mode;
  policy->filenames_encryption_mode =
   ctx->filenames_encryption_mode;
  policy->flags = ctx->flags;
  memcpy(policy->__reserved, ctx->__reserved,
         sizeof(policy->__reserved));
  memcpy(policy->master_key_identifier,
         ctx->master_key_identifier,
         sizeof(policy->master_key_identifier));
  return 0;
 }
 }

 return -EINVAL;
}
