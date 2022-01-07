
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dentry {struct dentry* d_parent; struct configfs_dirent* d_fsdata; TYPE_1__* d_sb; } ;
struct TYPE_9__ {struct dentry* ci_dentry; } ;
struct config_group {TYPE_6__ cg_item; } ;
struct configfs_subsystem {struct config_group su_group; } ;
struct configfs_fragment {int frag_dead; int frag_sem; } ;
struct configfs_dirent {struct configfs_fragment* s_frag; } ;
struct TYPE_8__ {int i_flags; } ;
struct TYPE_7__ {struct dentry* s_root; } ;


 int I_MUTEX_CHILD ;
 int I_MUTEX_PARENT ;
 int S_DEAD ;
 int configfs_detach_group (TYPE_6__*) ;
 scalar_t__ configfs_detach_prep (struct dentry*,int *) ;
 int configfs_dirent_lock ;
 int configfs_release_fs () ;
 int configfs_symlink_mutex ;
 int d_delete (struct dentry*) ;
 TYPE_2__* d_inode (struct dentry*) ;
 int dont_mount (struct dentry*) ;
 int down_write (int *) ;
 int dput (struct dentry*) ;
 int fsnotify_rmdir (TYPE_2__*,struct dentry*) ;
 int inode_lock_nested (TYPE_2__*,int ) ;
 int inode_unlock (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlink_group (struct config_group*) ;
 int up_write (int *) ;

void configfs_unregister_subsystem(struct configfs_subsystem *subsys)
{
 struct config_group *group = &subsys->su_group;
 struct dentry *dentry = group->cg_item.ci_dentry;
 struct dentry *root = dentry->d_sb->s_root;
 struct configfs_dirent *sd = dentry->d_fsdata;
 struct configfs_fragment *frag = sd->s_frag;

 if (dentry->d_parent != root) {
  pr_err("Tried to unregister non-subsystem!\n");
  return;
 }

 down_write(&frag->frag_sem);
 frag->frag_dead = 1;
 up_write(&frag->frag_sem);

 inode_lock_nested(d_inode(root),
     I_MUTEX_PARENT);
 inode_lock_nested(d_inode(dentry), I_MUTEX_CHILD);
 mutex_lock(&configfs_symlink_mutex);
 spin_lock(&configfs_dirent_lock);
 if (configfs_detach_prep(dentry, ((void*)0))) {
  pr_err("Tried to unregister non-empty subsystem!\n");
 }
 spin_unlock(&configfs_dirent_lock);
 mutex_unlock(&configfs_symlink_mutex);
 configfs_detach_group(&group->cg_item);
 d_inode(dentry)->i_flags |= S_DEAD;
 dont_mount(dentry);
 fsnotify_rmdir(d_inode(root), dentry);
 inode_unlock(d_inode(dentry));

 d_delete(dentry);

 inode_unlock(d_inode(root));

 dput(dentry);

 unlink_group(group);
 configfs_release_fs();
}
