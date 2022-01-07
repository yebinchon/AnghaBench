
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_subsystem {int su_mutex; } ;
struct configfs_fragment {int frag_dead; int frag_sem; } ;
struct configfs_dirent {struct configfs_fragment* s_frag; } ;
struct TYPE_9__ {TYPE_1__* ci_parent; struct dentry* ci_dentry; } ;
struct config_group {TYPE_6__ cg_item; struct configfs_subsystem* cg_subsys; } ;
struct TYPE_8__ {int i_flags; } ;
struct TYPE_7__ {struct dentry* ci_dentry; } ;


 int I_MUTEX_PARENT ;
 int S_DEAD ;
 int configfs_detach_group (TYPE_6__*) ;
 int configfs_detach_prep (struct dentry*,int *) ;
 int configfs_dirent_lock ;
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
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlink_group (struct config_group*) ;
 int up_write (int *) ;

void configfs_unregister_group(struct config_group *group)
{
 struct configfs_subsystem *subsys = group->cg_subsys;
 struct dentry *dentry = group->cg_item.ci_dentry;
 struct dentry *parent = group->cg_item.ci_parent->ci_dentry;
 struct configfs_dirent *sd = dentry->d_fsdata;
 struct configfs_fragment *frag = sd->s_frag;

 down_write(&frag->frag_sem);
 frag->frag_dead = 1;
 up_write(&frag->frag_sem);

 inode_lock_nested(d_inode(parent), I_MUTEX_PARENT);
 spin_lock(&configfs_dirent_lock);
 configfs_detach_prep(dentry, ((void*)0));
 spin_unlock(&configfs_dirent_lock);

 configfs_detach_group(&group->cg_item);
 d_inode(dentry)->i_flags |= S_DEAD;
 dont_mount(dentry);
 fsnotify_rmdir(d_inode(parent), dentry);
 d_delete(dentry);
 inode_unlock(d_inode(parent));

 dput(dentry);

 mutex_lock(&subsys->su_mutex);
 unlink_group(group);
 mutex_unlock(&subsys->su_mutex);
}
