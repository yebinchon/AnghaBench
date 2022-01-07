
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;


 int FS_ENCRYPT ;
 int fscrypt_crypt_block (struct inode const*,int ,int ,struct page*,struct page*,unsigned int,unsigned int,int ) ;

int fscrypt_encrypt_block_inplace(const struct inode *inode, struct page *page,
      unsigned int len, unsigned int offs,
      u64 lblk_num, gfp_t gfp_flags)
{
 return fscrypt_crypt_block(inode, FS_ENCRYPT, lblk_num, page, page,
       len, offs, gfp_flags);
}
