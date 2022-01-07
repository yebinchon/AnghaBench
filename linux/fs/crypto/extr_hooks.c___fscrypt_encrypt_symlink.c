
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int i_link; } ;
struct fscrypt_symlink_data {char* encrypted_path; int len; } ;
struct fscrypt_str {unsigned char* name; int len; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 struct qstr QSTR_INIT (char const*,unsigned int) ;
 int cpu_to_le16 (unsigned int) ;
 int fname_encrypt (struct inode*,struct qstr*,char*,unsigned int) ;
 int fscrypt_require_key (struct inode*) ;
 int kfree (struct fscrypt_symlink_data*) ;
 struct fscrypt_symlink_data* kmalloc (int,int ) ;
 int kmemdup (char const*,unsigned int,int ) ;

int __fscrypt_encrypt_symlink(struct inode *inode, const char *target,
         unsigned int len, struct fscrypt_str *disk_link)
{
 int err;
 struct qstr iname = QSTR_INIT(target, len);
 struct fscrypt_symlink_data *sd;
 unsigned int ciphertext_len;

 err = fscrypt_require_key(inode);
 if (err)
  return err;

 if (disk_link->name) {

  sd = (struct fscrypt_symlink_data *)disk_link->name;
 } else {
  sd = kmalloc(disk_link->len, GFP_NOFS);
  if (!sd)
   return -ENOMEM;
 }
 ciphertext_len = disk_link->len - sizeof(*sd);
 sd->len = cpu_to_le16(ciphertext_len);

 err = fname_encrypt(inode, &iname, sd->encrypted_path, ciphertext_len);
 if (err)
  goto err_free_sd;






 sd->encrypted_path[ciphertext_len] = '\0';


 err = -ENOMEM;
 inode->i_link = kmemdup(target, len + 1, GFP_NOFS);
 if (!inode->i_link)
  goto err_free_sd;

 if (!disk_link->name)
  disk_link->name = (unsigned char *)sd;
 return 0;

err_free_sd:
 if (!disk_link->name)
  kfree(sd);
 return err;
}
