
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union fscrypt_context {int dummy; } fscrypt_context ;
struct inode {TYPE_2__* i_sb; int i_crypt_info; } ;
struct fscrypt_info {int ci_policy; } ;
typedef int ctx ;
struct TYPE_4__ {TYPE_1__* s_cop; } ;
struct TYPE_3__ {int (* set_context ) (struct inode*,union fscrypt_context*,int,void*) ;} ;


 int BUILD_BUG_ON (int) ;
 int ENOKEY ;
 int FSCRYPT_SET_CONTEXT_MAX_SIZE ;
 struct fscrypt_info* READ_ONCE (int ) ;
 int fscrypt_get_encryption_info (struct inode*) ;
 int fscrypt_new_context_from_policy (union fscrypt_context*,int *) ;
 int stub1 (struct inode*,union fscrypt_context*,int,void*) ;

int fscrypt_inherit_context(struct inode *parent, struct inode *child,
      void *fs_data, bool preload)
{
 union fscrypt_context ctx;
 int ctxsize;
 struct fscrypt_info *ci;
 int res;

 res = fscrypt_get_encryption_info(parent);
 if (res < 0)
  return res;

 ci = READ_ONCE(parent->i_crypt_info);
 if (ci == ((void*)0))
  return -ENOKEY;

 ctxsize = fscrypt_new_context_from_policy(&ctx, &ci->ci_policy);

 BUILD_BUG_ON(sizeof(ctx) != FSCRYPT_SET_CONTEXT_MAX_SIZE);
 res = parent->i_sb->s_cop->set_context(child, &ctx, ctxsize, fs_data);
 if (res)
  return res;
 return preload ? fscrypt_get_encryption_info(child): 0;
}
