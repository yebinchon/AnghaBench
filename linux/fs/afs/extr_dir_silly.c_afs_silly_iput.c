
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_flags; int d_lock; int d_name; int d_parent; } ;
struct TYPE_2__ {int vnode; } ;
struct afs_vnode {int rmdir_lock; int silly_key; int lock; int lock_state; TYPE_1__ fid; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_LOCK_DELETED ;
 int DCACHE_NFSFS_RENAMED ;
 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int _enter (char*,struct dentry*,struct dentry*,int ) ;
 int afs_do_silly_unlink (struct afs_vnode*,struct afs_vnode*,struct dentry*,int ) ;
 int afs_flock_silly_delete ;
 struct dentry* d_alloc_parallel (int ,int *,int *) ;
 int d_in_lookup (struct dentry*) ;
 struct inode* d_inode (int ) ;
 int d_lookup_done (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int down_read (int *) ;
 int dput (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_afs_flock_ev (struct afs_vnode*,int *,int ,int ) ;
 int up_read (int *) ;
 int wq ;

int afs_silly_iput(struct dentry *dentry, struct inode *inode)
{
 struct afs_vnode *dvnode = AFS_FS_I(d_inode(dentry->d_parent));
 struct afs_vnode *vnode = AFS_FS_I(inode);
 struct dentry *alias;
 int ret;

 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);

 _enter("%p{%pd},%llx", dentry, dentry, vnode->fid.vnode);

 down_read(&dvnode->rmdir_lock);

 alias = d_alloc_parallel(dentry->d_parent, &dentry->d_name, &wq);
 if (IS_ERR(alias)) {
  up_read(&dvnode->rmdir_lock);
  return 0;
 }

 if (!d_in_lookup(alias)) {



  ret = 0;
  spin_lock(&alias->d_lock);
  if (d_really_is_positive(alias) &&
      !(alias->d_flags & DCACHE_NFSFS_RENAMED)) {
   alias->d_flags |= DCACHE_NFSFS_RENAMED;
   ret = 1;
  }
  spin_unlock(&alias->d_lock);
  up_read(&dvnode->rmdir_lock);
  dput(alias);
  return ret;
 }


 spin_lock(&vnode->lock);
 vnode->lock_state = AFS_VNODE_LOCK_DELETED;
 trace_afs_flock_ev(vnode, ((void*)0), afs_flock_silly_delete, 0);
 spin_unlock(&vnode->lock);

 afs_do_silly_unlink(dvnode, vnode, dentry, dvnode->silly_key);
 up_read(&dvnode->rmdir_lock);
 d_lookup_done(alias);
 dput(alias);
 return 1;
}
