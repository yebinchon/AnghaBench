
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int I_MUTEX_PARENT ;
 int d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;

__attribute__((used)) static struct dentry *lock_parent(struct dentry *dentry)
{
 struct dentry *dir;

 dir = dget_parent(dentry);
 inode_lock_nested(d_inode(dir), I_MUTEX_PARENT);
 return dir;
}
