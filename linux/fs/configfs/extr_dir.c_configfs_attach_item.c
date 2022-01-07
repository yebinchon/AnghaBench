
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct configfs_fragment {int dummy; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int i_flags; } ;


 int S_DEAD ;
 int configfs_create_dir (struct config_item*,struct dentry*,struct configfs_fragment*) ;
 int configfs_remove_dir (struct config_item*) ;
 int d_delete (struct dentry*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int dont_mount (struct dentry*) ;
 int inode_lock (TYPE_1__*) ;
 int inode_unlock (TYPE_1__*) ;
 int populate_attrs (struct config_item*) ;

__attribute__((used)) static int configfs_attach_item(struct config_item *parent_item,
    struct config_item *item,
    struct dentry *dentry,
    struct configfs_fragment *frag)
{
 int ret;

 ret = configfs_create_dir(item, dentry, frag);
 if (!ret) {
  ret = populate_attrs(item);
  if (ret) {





   inode_lock(d_inode(dentry));
   configfs_remove_dir(item);
   d_inode(dentry)->i_flags |= S_DEAD;
   dont_mount(dentry);
   inode_unlock(d_inode(dentry));
   d_delete(dentry);
  }
 }

 return ret;
}
