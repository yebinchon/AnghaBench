
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 int ecryptfs_do_unlink (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int ecryptfs_unlink(struct inode *dir, struct dentry *dentry)
{
 return ecryptfs_do_unlink(dir, dentry, d_inode(dentry));
}
