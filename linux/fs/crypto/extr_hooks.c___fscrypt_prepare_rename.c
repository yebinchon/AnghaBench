
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_flags; } ;


 int DCACHE_ENCRYPTED_NAME ;
 int ENOKEY ;
 int EXDEV ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 unsigned int RENAME_EXCHANGE ;
 int d_inode (struct dentry*) ;
 int fscrypt_has_permitted_context (struct inode*,int ) ;
 int fscrypt_require_key (struct inode*) ;

int __fscrypt_prepare_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry,
        unsigned int flags)
{
 int err;

 err = fscrypt_require_key(old_dir);
 if (err)
  return err;

 err = fscrypt_require_key(new_dir);
 if (err)
  return err;


 if ((old_dentry->d_flags | new_dentry->d_flags) &
     DCACHE_ENCRYPTED_NAME)
  return -ENOKEY;

 if (old_dir != new_dir) {
  if (IS_ENCRYPTED(new_dir) &&
      !fscrypt_has_permitted_context(new_dir,
         d_inode(old_dentry)))
   return -EXDEV;

  if ((flags & RENAME_EXCHANGE) &&
      IS_ENCRYPTED(old_dir) &&
      !fscrypt_has_permitted_context(old_dir,
         d_inode(new_dentry)))
   return -EXDEV;
 }
 return 0;
}
