
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct efivar_entry {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct efivar_entry* i_private; } ;


 int EINVAL ;
 TYPE_1__* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (TYPE_1__*) ;
 scalar_t__ efivar_entry_delete (struct efivar_entry*) ;

__attribute__((used)) static int efivarfs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct efivar_entry *var = d_inode(dentry)->i_private;

 if (efivar_entry_delete(var))
  return -EINVAL;

 drop_nlink(d_inode(dentry));
 dput(dentry);
 return 0;
}
