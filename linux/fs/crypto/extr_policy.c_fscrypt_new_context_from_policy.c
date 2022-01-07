
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_policy_v2 {int master_key_identifier; int flags; int filenames_encryption_mode; int contents_encryption_mode; } ;
struct fscrypt_policy_v1 {int master_key_descriptor; int flags; int filenames_encryption_mode; int contents_encryption_mode; } ;
union fscrypt_policy {int version; struct fscrypt_policy_v2 v2; struct fscrypt_policy_v1 v1; } ;
struct fscrypt_context_v2 {int nonce; int master_key_identifier; int flags; int filenames_encryption_mode; int contents_encryption_mode; int version; } ;
struct fscrypt_context_v1 {int nonce; int master_key_descriptor; int flags; int filenames_encryption_mode; int contents_encryption_mode; int version; } ;
union fscrypt_context {struct fscrypt_context_v2 v2; struct fscrypt_context_v1 v1; } ;


 int BUG () ;
 int FSCRYPT_CONTEXT_V1 ;
 int FSCRYPT_CONTEXT_V2 ;


 int get_random_bytes (int ,int) ;
 int memcpy (int ,int ,int) ;
 int memset (union fscrypt_context*,int ,int) ;

__attribute__((used)) static int fscrypt_new_context_from_policy(union fscrypt_context *ctx_u,
        const union fscrypt_policy *policy_u)
{
 memset(ctx_u, 0, sizeof(*ctx_u));

 switch (policy_u->version) {
 case 129: {
  const struct fscrypt_policy_v1 *policy = &policy_u->v1;
  struct fscrypt_context_v1 *ctx = &ctx_u->v1;

  ctx->version = FSCRYPT_CONTEXT_V1;
  ctx->contents_encryption_mode =
   policy->contents_encryption_mode;
  ctx->filenames_encryption_mode =
   policy->filenames_encryption_mode;
  ctx->flags = policy->flags;
  memcpy(ctx->master_key_descriptor,
         policy->master_key_descriptor,
         sizeof(ctx->master_key_descriptor));
  get_random_bytes(ctx->nonce, sizeof(ctx->nonce));
  return sizeof(*ctx);
 }
 case 128: {
  const struct fscrypt_policy_v2 *policy = &policy_u->v2;
  struct fscrypt_context_v2 *ctx = &ctx_u->v2;

  ctx->version = FSCRYPT_CONTEXT_V2;
  ctx->contents_encryption_mode =
   policy->contents_encryption_mode;
  ctx->filenames_encryption_mode =
   policy->filenames_encryption_mode;
  ctx->flags = policy->flags;
  memcpy(ctx->master_key_identifier,
         policy->master_key_identifier,
         sizeof(ctx->master_key_identifier));
  get_random_bytes(ctx->nonce, sizeof(ctx->nonce));
  return sizeof(*ctx);
 }
 }
 BUG();
}
