
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vnode {int lock_state; } ;
typedef enum afs_lock_state { ____Placeholder_afs_lock_state } afs_lock_state ;


 int _debug (char*,int,int) ;

__attribute__((used)) static inline void afs_set_lock_state(struct afs_vnode *vnode, enum afs_lock_state state)
{
 _debug("STATE %u -> %u", vnode->lock_state, state);
 vnode->lock_state = state;
}
