
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {struct fscrypt_info* i_crypt_info; } ;
struct fscrypt_info {int ci_policy; } ;


 int FSCRYPT_POLICY_FLAGS_PAD_MASK ;
 scalar_t__ FS_CRYPTO_BLOCK_SIZE ;
 int fscrypt_policy_flags (int *) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int round_up (int ,int) ;

bool fscrypt_fname_encrypted_size(const struct inode *inode, u32 orig_len,
      u32 max_len, u32 *encrypted_len_ret)
{
 const struct fscrypt_info *ci = inode->i_crypt_info;
 int padding = 4 << (fscrypt_policy_flags(&ci->ci_policy) &
       FSCRYPT_POLICY_FLAGS_PAD_MASK);
 u32 encrypted_len;

 if (orig_len > max_len)
  return 0;
 encrypted_len = max(orig_len, (u32)FS_CRYPTO_BLOCK_SIZE);
 encrypted_len = round_up(encrypted_len, padding);
 *encrypted_len_ret = min(encrypted_len, max_len);
 return 1;
}
