
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; } ;


 int d_inode (int ) ;
 int inode_unlock (int ) ;

__attribute__((used)) static struct dentry *end_creating(struct dentry *dentry)
{
 inode_unlock(d_inode(dentry->d_parent));
 return dentry;
}
