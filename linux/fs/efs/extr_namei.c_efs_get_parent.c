
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
typedef scalar_t__ efs_ino_t ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 scalar_t__ efs_find_entry (int ,char*,int) ;
 int efs_iget (int ,scalar_t__) ;

struct dentry *efs_get_parent(struct dentry *child)
{
 struct dentry *parent = ERR_PTR(-ENOENT);
 efs_ino_t ino;

 ino = efs_find_entry(d_inode(child), "..", 2);
 if (ino)
  parent = d_obtain_alias(efs_iget(child->d_sb, ino));

 return parent;
}
