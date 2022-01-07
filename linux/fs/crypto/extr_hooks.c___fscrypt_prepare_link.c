
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_flags; } ;


 int DCACHE_ENCRYPTED_NAME ;
 int ENOKEY ;
 int EXDEV ;
 int fscrypt_has_permitted_context (struct inode*,struct inode*) ;
 int fscrypt_require_key (struct inode*) ;

int __fscrypt_prepare_link(struct inode *inode, struct inode *dir,
      struct dentry *dentry)
{
 int err;

 err = fscrypt_require_key(dir);
 if (err)
  return err;


 if (dentry->d_flags & DCACHE_ENCRYPTED_NAME)
  return -ENOKEY;

 if (!fscrypt_has_permitted_context(dir, inode))
  return -EXDEV;

 return 0;
}
