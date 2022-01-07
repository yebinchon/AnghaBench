
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int master_key_identifier; } ;
union fscrypt_policy {int version; TYPE_2__ v2; } ;
typedef union fscrypt_context {int dummy; } fscrypt_context ;
struct inode {TYPE_3__* i_sb; } ;
struct TYPE_8__ {int pid; int comm; } ;
struct TYPE_7__ {TYPE_1__* s_cop; } ;
struct TYPE_5__ {int (* set_context ) (struct inode*,union fscrypt_context*,int,int *) ;} ;


 int EINVAL ;


 int WARN_ON (int) ;
 TYPE_4__* current ;
 int fscrypt_new_context_from_policy (union fscrypt_context*,union fscrypt_policy const*) ;
 int fscrypt_supported_policy (union fscrypt_policy const*,struct inode*) ;
 int fscrypt_verify_key_added (TYPE_3__*,int ) ;
 int pr_warn_once (char*,int ,int ) ;
 int stub1 (struct inode*,union fscrypt_context*,int,int *) ;

__attribute__((used)) static int set_encryption_policy(struct inode *inode,
     const union fscrypt_policy *policy)
{
 union fscrypt_context ctx;
 int ctxsize;
 int err;

 if (!fscrypt_supported_policy(policy, inode))
  return -EINVAL;

 switch (policy->version) {
 case 129:
  pr_warn_once("%s (pid %d) is setting deprecated v1 encryption policy; recommend upgrading to v2.\n",
        current->comm, current->pid);
  break;
 case 128:
  err = fscrypt_verify_key_added(inode->i_sb,
            policy->v2.master_key_identifier);
  if (err)
   return err;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 ctxsize = fscrypt_new_context_from_policy(&ctx, policy);

 return inode->i_sb->s_cop->set_context(inode, &ctx, ctxsize, ((void*)0));
}
