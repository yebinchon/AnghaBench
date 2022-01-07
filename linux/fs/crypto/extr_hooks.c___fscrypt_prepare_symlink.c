
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fscrypt_symlink_data {int dummy; } ;
struct fscrypt_str {int len; int * name; } ;


 int ENAMETOOLONG ;
 int ENOKEY ;
 int fscrypt_fname_encrypted_size (struct inode*,unsigned int,unsigned int,int*) ;
 int fscrypt_get_encryption_info (struct inode*) ;
 int fscrypt_has_encryption_key (struct inode*) ;

int __fscrypt_prepare_symlink(struct inode *dir, unsigned int len,
         unsigned int max_len,
         struct fscrypt_str *disk_link)
{
 int err;
 err = fscrypt_get_encryption_info(dir);
 if (err)
  return err;
 if (!fscrypt_has_encryption_key(dir))
  return -ENOKEY;
 if (!fscrypt_fname_encrypted_size(dir, len,
       max_len - sizeof(struct fscrypt_symlink_data),
       &disk_link->len))
  return -ENAMETOOLONG;
 disk_link->len += sizeof(struct fscrypt_symlink_data);

 disk_link->name = ((void*)0);
 return 0;
}
