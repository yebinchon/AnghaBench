
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_size; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 struct dentry* debugfs_create_file (char const*,int ,struct dentry*,void*,struct file_operations const*) ;

struct dentry *debugfs_create_file_size(const char *name, umode_t mode,
     struct dentry *parent, void *data,
     const struct file_operations *fops,
     loff_t file_size)
{
 struct dentry *de = debugfs_create_file(name, mode, parent, data, fops);

 if (de)
  d_inode(de)->i_size = file_size;
 return de;
}
