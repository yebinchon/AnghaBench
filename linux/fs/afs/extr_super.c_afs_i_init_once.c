
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int cb_lock; int lock_work; int granted_locks; int pending_locks; int wb_keys; int lock; int wb_lock; int validate_lock; int io_lock; int vfs_inode; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int afs_lock_work ;
 int init_rwsem (int *) ;
 int inode_init_once (int *) ;
 int memset (struct afs_vnode*,int ,int) ;
 int mutex_init (int *) ;
 int seqlock_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void afs_i_init_once(void *_vnode)
{
 struct afs_vnode *vnode = _vnode;

 memset(vnode, 0, sizeof(*vnode));
 inode_init_once(&vnode->vfs_inode);
 mutex_init(&vnode->io_lock);
 init_rwsem(&vnode->validate_lock);
 spin_lock_init(&vnode->wb_lock);
 spin_lock_init(&vnode->lock);
 INIT_LIST_HEAD(&vnode->wb_keys);
 INIT_LIST_HEAD(&vnode->pending_locks);
 INIT_LIST_HEAD(&vnode->granted_locks);
 INIT_DELAYED_WORK(&vnode->lock_work, afs_lock_work);
 seqlock_init(&vnode->cb_lock);
}
