
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct afs_vnode {int flags; struct inode vfs_inode; int rmdir_lock; int lock_state; int * cache; int cb_interest; int * permit_cache; int * lock_key; int * volume; int status; int fid; } ;


 int AFS_VNODE_LOCK_NONE ;
 int AFS_VNODE_UNSET ;
 int GFP_KERNEL ;
 int RCU_INIT_POINTER (int ,int *) ;
 int _leave (char*,struct inode*) ;
 int afs_count_active_inodes ;
 int afs_inode_cachep ;
 int atomic_inc (int *) ;
 int init_rwsem (int *) ;
 struct afs_vnode* kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static struct inode *afs_alloc_inode(struct super_block *sb)
{
 struct afs_vnode *vnode;

 vnode = kmem_cache_alloc(afs_inode_cachep, GFP_KERNEL);
 if (!vnode)
  return ((void*)0);

 atomic_inc(&afs_count_active_inodes);


 memset(&vnode->fid, 0, sizeof(vnode->fid));
 memset(&vnode->status, 0, sizeof(vnode->status));

 vnode->volume = ((void*)0);
 vnode->lock_key = ((void*)0);
 vnode->permit_cache = ((void*)0);
 RCU_INIT_POINTER(vnode->cb_interest, ((void*)0));




 vnode->flags = 1 << AFS_VNODE_UNSET;
 vnode->lock_state = AFS_VNODE_LOCK_NONE;

 init_rwsem(&vnode->rmdir_lock);

 _leave(" = %p", &vnode->vfs_inode);
 return &vnode->vfs_inode;
}
