
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef scalar_t__ efs_ino_t ;


 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 scalar_t__ efs_find_entry (struct inode*,int ,int ) ;
 struct inode* efs_iget (int ,scalar_t__) ;

struct dentry *efs_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 efs_ino_t inodenum;
 struct inode *inode = ((void*)0);

 inodenum = efs_find_entry(dir, dentry->d_name.name, dentry->d_name.len);
 if (inodenum)
  inode = efs_iget(dir->i_sb, inodenum);

 return d_splice_alias(inode, dentry);
}
