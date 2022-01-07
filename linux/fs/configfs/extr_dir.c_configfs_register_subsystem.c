
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {struct configfs_dirent* d_fsdata; } ;
struct TYPE_2__ {scalar_t__ ci_name; scalar_t__ ci_namebuf; } ;
struct config_group {TYPE_1__ cg_item; } ;
struct configfs_subsystem {struct config_group su_group; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {int s_element; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 int configfs_attach_group (int ,TYPE_1__*,struct dentry*,struct configfs_fragment*) ;
 int configfs_dir_set_ready (struct configfs_dirent*) ;
 int configfs_dirent_lock ;
 struct dentry* configfs_pin_fs () ;
 int configfs_release_fs () ;
 int d_add (struct dentry*,int *) ;
 struct dentry* d_alloc_name (struct dentry*,scalar_t__) ;
 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int link_group (int ,struct config_group*) ;
 struct configfs_fragment* new_fragment () ;
 int put_fragment (struct configfs_fragment*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int to_config_group (int ) ;
 int unlink_group (struct config_group*) ;

int configfs_register_subsystem(struct configfs_subsystem *subsys)
{
 int err;
 struct config_group *group = &subsys->su_group;
 struct dentry *dentry;
 struct dentry *root;
 struct configfs_dirent *sd;
 struct configfs_fragment *frag;

 frag = new_fragment();
 if (!frag)
  return -ENOMEM;

 root = configfs_pin_fs();
 if (IS_ERR(root)) {
  put_fragment(frag);
  return PTR_ERR(root);
 }

 if (!group->cg_item.ci_name)
  group->cg_item.ci_name = group->cg_item.ci_namebuf;

 sd = root->d_fsdata;
 link_group(to_config_group(sd->s_element), group);

 inode_lock_nested(d_inode(root), I_MUTEX_PARENT);

 err = -ENOMEM;
 dentry = d_alloc_name(root, group->cg_item.ci_name);
 if (dentry) {
  d_add(dentry, ((void*)0));

  err = configfs_attach_group(sd->s_element, &group->cg_item,
         dentry, frag);
  if (err) {
   BUG_ON(d_inode(dentry));
   d_drop(dentry);
   dput(dentry);
  } else {
   spin_lock(&configfs_dirent_lock);
   configfs_dir_set_ready(dentry->d_fsdata);
   spin_unlock(&configfs_dirent_lock);
  }
 }

 inode_unlock(d_inode(root));

 if (err) {
  unlink_group(group);
  configfs_release_fs();
 }
 put_fragment(frag);

 return err;
}
