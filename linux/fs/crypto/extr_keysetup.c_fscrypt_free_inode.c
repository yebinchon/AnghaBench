
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_link; int i_mode; } ;


 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ S_ISLNK (int ) ;
 int kfree (int *) ;

void fscrypt_free_inode(struct inode *inode)
{
 if (IS_ENCRYPTED(inode) && S_ISLNK(inode->i_mode)) {
  kfree(inode->i_link);
  inode->i_link = ((void*)0);
 }
}
