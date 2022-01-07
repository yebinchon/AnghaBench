
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fscrypt_policy {int dummy; } fscrypt_policy ;
struct inode {int i_mode; } ;


 int IS_ENCRYPTED (struct inode*) ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int fscrypt_get_encryption_info (struct inode*) ;
 int fscrypt_get_policy (struct inode*,union fscrypt_policy*) ;
 int fscrypt_policies_equal (union fscrypt_policy*,union fscrypt_policy*) ;

int fscrypt_has_permitted_context(struct inode *parent, struct inode *child)
{
 union fscrypt_policy parent_policy, child_policy;
 int err;


 if (!S_ISREG(child->i_mode) && !S_ISDIR(child->i_mode) &&
     !S_ISLNK(child->i_mode))
  return 1;


 if (!IS_ENCRYPTED(parent))
  return 1;


 if (!IS_ENCRYPTED(child))
  return 0;
 err = fscrypt_get_encryption_info(parent);
 if (err)
  return 0;
 err = fscrypt_get_encryption_info(child);
 if (err)
  return 0;

 err = fscrypt_get_policy(parent, &parent_policy);
 if (err)
  return 0;

 err = fscrypt_get_policy(child, &child_policy);
 if (err)
  return 0;

 return fscrypt_policies_equal(&parent_policy, &child_policy);
}
