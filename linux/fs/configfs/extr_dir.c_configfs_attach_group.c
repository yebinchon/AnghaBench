
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {int s_type; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int i_flags; } ;


 int CONFIGFS_USET_DIR ;
 int I_MUTEX_CHILD ;
 int S_DEAD ;
 int configfs_adjust_dir_dirent_depth_after_populate (struct configfs_dirent*) ;
 int configfs_adjust_dir_dirent_depth_before_populate (struct configfs_dirent*) ;
 int configfs_attach_item (struct config_item*,struct config_item*,struct dentry*,struct configfs_fragment*) ;
 int configfs_detach_item (struct config_item*) ;
 int d_delete (struct dentry*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int dont_mount (struct dentry*) ;
 int inode_lock_nested (TYPE_1__*,int ) ;
 int inode_unlock (TYPE_1__*) ;
 int populate_groups (int ,struct configfs_fragment*) ;
 int to_config_group (struct config_item*) ;

__attribute__((used)) static int configfs_attach_group(struct config_item *parent_item,
     struct config_item *item,
     struct dentry *dentry,
     struct configfs_fragment *frag)
{
 int ret;
 struct configfs_dirent *sd;

 ret = configfs_attach_item(parent_item, item, dentry, frag);
 if (!ret) {
  sd = dentry->d_fsdata;
  sd->s_type |= CONFIGFS_USET_DIR;
  inode_lock_nested(d_inode(dentry), I_MUTEX_CHILD);
  configfs_adjust_dir_dirent_depth_before_populate(sd);
  ret = populate_groups(to_config_group(item), frag);
  if (ret) {
   configfs_detach_item(item);
   d_inode(dentry)->i_flags |= S_DEAD;
   dont_mount(dentry);
  }
  configfs_adjust_dir_dirent_depth_after_populate(sd);
  inode_unlock(d_inode(dentry));
  if (ret)
   d_delete(dentry);
 }

 return ret;
}
