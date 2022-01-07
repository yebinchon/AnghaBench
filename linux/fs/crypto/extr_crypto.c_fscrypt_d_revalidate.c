
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_ENCRYPTED_NAME ;
 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 int d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int fscrypt_get_encryption_info (int ) ;
 int fscrypt_has_encryption_key (int ) ;

__attribute__((used)) static int fscrypt_d_revalidate(struct dentry *dentry, unsigned int flags)
{
 struct dentry *dir;
 int err;
 int valid;






 if (!(dentry->d_flags & DCACHE_ENCRYPTED_NAME))
  return 1;
 if (flags & LOOKUP_RCU)
  return -ECHILD;

 dir = dget_parent(dentry);
 err = fscrypt_get_encryption_info(d_inode(dir));
 valid = !fscrypt_has_encryption_key(d_inode(dir));
 dput(dir);

 if (err < 0)
  return err;

 return valid;
}
