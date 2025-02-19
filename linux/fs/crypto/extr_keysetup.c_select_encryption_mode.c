
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fscrypt_policy {int dummy; } fscrypt_policy ;
struct inode {int i_mode; int i_ino; } ;
struct fscrypt_mode {int dummy; } ;


 int EINVAL ;
 struct fscrypt_mode* ERR_PTR (int ) ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int WARN_ONCE (int,char*,int ,int) ;
 struct fscrypt_mode* available_modes ;
 size_t fscrypt_policy_contents_mode (union fscrypt_policy const*) ;
 size_t fscrypt_policy_fnames_mode (union fscrypt_policy const*) ;

__attribute__((used)) static struct fscrypt_mode *
select_encryption_mode(const union fscrypt_policy *policy,
         const struct inode *inode)
{
 if (S_ISREG(inode->i_mode))
  return &available_modes[fscrypt_policy_contents_mode(policy)];

 if (S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode))
  return &available_modes[fscrypt_policy_fnames_mode(policy)];

 WARN_ONCE(1, "fscrypt: filesystem tried to load encryption info for inode %lu, which is not encryptable (file type %d)\n",
    inode->i_ino, (inode->i_mode & S_IFMT));
 return ERR_PTR(-EINVAL);
}
