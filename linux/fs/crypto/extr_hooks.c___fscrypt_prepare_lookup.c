
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fscrypt_name {scalar_t__ is_ciphertext_name; } ;
struct dentry {int d_lock; int d_flags; int d_name; } ;


 int DCACHE_ENCRYPTED_NAME ;
 int ENOENT ;
 int d_set_d_op (struct dentry*,int *) ;
 int fscrypt_d_ops ;
 int fscrypt_setup_filename (struct inode*,int *,int,struct fscrypt_name*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __fscrypt_prepare_lookup(struct inode *dir, struct dentry *dentry,
        struct fscrypt_name *fname)
{
 int err = fscrypt_setup_filename(dir, &dentry->d_name, 1, fname);

 if (err && err != -ENOENT)
  return err;

 if (fname->is_ciphertext_name) {
  spin_lock(&dentry->d_lock);
  dentry->d_flags |= DCACHE_ENCRYPTED_NAME;
  spin_unlock(&dentry->d_lock);
  d_set_d_op(dentry, &fscrypt_d_ops);
 }
 return err;
}
