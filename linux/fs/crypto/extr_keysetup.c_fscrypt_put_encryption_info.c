
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_crypt_info; } ;


 int put_crypt_info (int *) ;

void fscrypt_put_encryption_info(struct inode *inode)
{
 put_crypt_info(inode->i_crypt_info);
 inode->i_crypt_info = ((void*)0);
}
