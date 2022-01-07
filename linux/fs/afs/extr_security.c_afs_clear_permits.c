
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int lock; int permit_cache; } ;
struct afs_permits {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int afs_put_permits (struct afs_permits*) ;
 int lockdep_is_held (int *) ;
 struct afs_permits* rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void afs_clear_permits(struct afs_vnode *vnode)
{
 struct afs_permits *permits;

 spin_lock(&vnode->lock);
 permits = rcu_dereference_protected(vnode->permit_cache,
         lockdep_is_held(&vnode->lock));
 RCU_INIT_POINTER(vnode->permit_cache, ((void*)0));
 spin_unlock(&vnode->lock);

 afs_put_permits(permits);
}
