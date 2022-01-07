
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union fscrypt_policy {int dummy; } fscrypt_policy ;
typedef union fscrypt_context {int dummy; } fscrypt_context ;
struct inode {TYPE_2__* i_sb; int i_crypt_info; } ;
struct fscrypt_info {union fscrypt_policy ci_policy; } ;
typedef int ctx ;
struct TYPE_4__ {TYPE_1__* s_cop; } ;
struct TYPE_3__ {int (* get_context ) (struct inode*,union fscrypt_context*,int) ;} ;


 int EINVAL ;
 int ENODATA ;
 int ERANGE ;
 int IS_ENCRYPTED (struct inode*) ;
 struct fscrypt_info* READ_ONCE (int ) ;
 int fscrypt_policy_from_context (union fscrypt_policy*,union fscrypt_context*,int) ;
 int stub1 (struct inode*,union fscrypt_context*,int) ;

__attribute__((used)) static int fscrypt_get_policy(struct inode *inode, union fscrypt_policy *policy)
{
 const struct fscrypt_info *ci;
 union fscrypt_context ctx;
 int ret;

 ci = READ_ONCE(inode->i_crypt_info);
 if (ci) {

  *policy = ci->ci_policy;
  return 0;
 }

 if (!IS_ENCRYPTED(inode))
  return -ENODATA;

 ret = inode->i_sb->s_cop->get_context(inode, &ctx, sizeof(ctx));
 if (ret < 0)
  return (ret == -ERANGE) ? -EINVAL : ret;

 return fscrypt_policy_from_context(policy, &ctx, ret);
}
