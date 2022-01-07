
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct afs_vnode {int cb_lock; int vfs_inode; int flags; } ;
struct TYPE_3__ {scalar_t__ abort_code; } ;
struct afs_status_cb {scalar_t__ have_status; scalar_t__ have_cb; TYPE_1__ status; scalar_t__ have_error; } ;
struct TYPE_4__ {scalar_t__ error; } ;
struct afs_fs_cursor {int key; TYPE_2__ ac; } ;
typedef int afs_dataversion_t ;


 int AFS_VNODE_DELETED ;
 scalar_t__ VNOVNODE ;
 int __afs_break_callback (struct afs_vnode*,int ) ;
 int afs_apply_callback (struct afs_fs_cursor*,struct afs_vnode*,struct afs_status_cb*,unsigned int) ;
 int afs_apply_status (struct afs_fs_cursor*,struct afs_vnode*,struct afs_status_cb*,int const*) ;
 int afs_cache_permit (struct afs_vnode*,int ,unsigned int,struct afs_status_cb*) ;
 int afs_cb_break_for_deleted ;
 int clear_nlink (int *) ;
 int set_bit (int ,int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void afs_vnode_commit_status(struct afs_fs_cursor *fc,
        struct afs_vnode *vnode,
        unsigned int cb_break,
        const afs_dataversion_t *expected_version,
        struct afs_status_cb *scb)
{
 if (fc->ac.error != 0)
  return;

 write_seqlock(&vnode->cb_lock);

 if (scb->have_error) {
  if (scb->status.abort_code == VNOVNODE) {
   set_bit(AFS_VNODE_DELETED, &vnode->flags);
   clear_nlink(&vnode->vfs_inode);
   __afs_break_callback(vnode, afs_cb_break_for_deleted);
  }
 } else {
  if (scb->have_status)
   afs_apply_status(fc, vnode, scb, expected_version);
  if (scb->have_cb)
   afs_apply_callback(fc, vnode, scb, cb_break);
 }

 write_sequnlock(&vnode->cb_lock);

 if (fc->ac.error == 0 && scb->have_status)
  afs_cache_permit(vnode, fc->key, cb_break, scb);
}
