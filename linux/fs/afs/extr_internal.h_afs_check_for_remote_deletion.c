
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vnode {int flags; } ;
struct TYPE_2__ {int error; } ;
struct afs_fs_cursor {TYPE_1__ ac; } ;


 int AFS_VNODE_DELETED ;
 int ENOENT ;
 int afs_break_callback (struct afs_vnode*,int ) ;
 int afs_cb_break_for_deleted ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void afs_check_for_remote_deletion(struct afs_fs_cursor *fc,
       struct afs_vnode *vnode)
{
 if (fc->ac.error == -ENOENT) {
  set_bit(AFS_VNODE_DELETED, &vnode->flags);
  afs_break_callback(vnode, afs_cb_break_for_deleted);
 }
}
