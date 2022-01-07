
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int FS_DECRYPT ;
 int GFP_NOFS ;
 int fscrypt_crypt_block (struct inode const*,int ,int ,struct page*,struct page*,unsigned int,unsigned int,int ) ;

int fscrypt_decrypt_block_inplace(const struct inode *inode, struct page *page,
      unsigned int len, unsigned int offs,
      u64 lblk_num)
{
 return fscrypt_crypt_block(inode, FS_DECRYPT, lblk_num, page, page,
       len, offs, GFP_NOFS);
}
