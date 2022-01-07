
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_unlock (int ) ;

__attribute__((used)) static void unlock_dir(struct dentry *dir)
{
 inode_unlock(d_inode(dir));
 dput(dir);
}
