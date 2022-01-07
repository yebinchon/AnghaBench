
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int seq; int i_gid; int i_uid; int i_mode; } ;
struct ceph_snap_context {int seq; int i_gid; int i_uid; int i_mode; } ;
struct TYPE_4__ {scalar_t__ version; int blob; } ;
struct ceph_inode_info {scalar_t__ i_wrbuffer_ref_head; scalar_t__ i_inline_version; scalar_t__ i_wr_ref; scalar_t__ i_dirty_caps; scalar_t__ i_flushing_caps; int i_ceph_lock; struct inode* i_head_snapc; int i_cap_snaps; TYPE_2__ i_xattrs; TYPE_1__* i_snap_realm; struct inode vfs_inode; } ;
struct ceph_cap_snap {int need_flush; int dirty; int inline_data; scalar_t__ dirty_pages; int writing; int ci_item; struct inode* context; scalar_t__ xattr_version; int * xattr_blob; int gid; int uid; int mode; int issued; int follows; int nref; } ;
struct ceph_buffer {int dummy; } ;
struct TYPE_3__ {struct inode* cached_context; } ;


 int BUG_ON (int) ;
 int CEPH_CAP_ANY_EXCL ;
 int CEPH_CAP_FILE_WR ;
 int CEPH_CAP_XATTR_EXCL ;
 scalar_t__ CEPH_INLINE_NONE ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct ceph_buffer* __ceph_build_xattrs_blob (struct ceph_inode_info*) ;
 int __ceph_caps_dirty (struct ceph_inode_info*) ;
 int __ceph_caps_issued (struct ceph_inode_info*,int *) ;
 int __ceph_caps_used (struct ceph_inode_info*) ;
 int __ceph_finish_cap_snap (struct ceph_inode_info*,struct ceph_cap_snap*) ;
 scalar_t__ __ceph_have_pending_cap_snap (struct ceph_inode_info*) ;
 int * ceph_buffer_get (int ) ;
 int ceph_buffer_put (struct ceph_buffer*) ;
 int ceph_cap_string (int) ;
 struct inode* ceph_get_snap_context (struct inode*) ;
 int ceph_put_snap_context (struct inode*) ;
 int dout (char*,struct inode*,...) ;
 scalar_t__ has_new_snaps (struct inode*,struct inode*) ;
 int ihold (struct inode*) ;
 int kfree (struct ceph_cap_snap*) ;
 struct ceph_cap_snap* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*,struct inode*) ;
 int refcount_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_queue_cap_snap(struct ceph_inode_info *ci)
{
 struct inode *inode = &ci->vfs_inode;
 struct ceph_cap_snap *capsnap;
 struct ceph_snap_context *old_snapc, *new_snapc;
 struct ceph_buffer *old_blob = ((void*)0);
 int used, dirty;

 capsnap = kzalloc(sizeof(*capsnap), GFP_NOFS);
 if (!capsnap) {
  pr_err("ENOMEM allocating ceph_cap_snap on %p\n", inode);
  return;
 }

 spin_lock(&ci->i_ceph_lock);
 used = __ceph_caps_used(ci);
 dirty = __ceph_caps_dirty(ci);

 old_snapc = ci->i_head_snapc;
 new_snapc = ci->i_snap_realm->cached_context;






 if (used & CEPH_CAP_FILE_WR)
  dirty |= CEPH_CAP_FILE_WR;

 if (__ceph_have_pending_cap_snap(ci)) {




  dout("queue_cap_snap %p already pending\n", inode);
  goto update_snapc;
 }
 if (ci->i_wrbuffer_ref_head == 0 &&
     !(dirty & (CEPH_CAP_ANY_EXCL|CEPH_CAP_FILE_WR))) {
  dout("queue_cap_snap %p nothing dirty|writing\n", inode);
  goto update_snapc;
 }

 BUG_ON(!old_snapc);
 if (has_new_snaps(old_snapc, new_snapc)) {
  if (dirty & (CEPH_CAP_ANY_EXCL|CEPH_CAP_FILE_WR))
   capsnap->need_flush = 1;
 } else {
  if (!(used & CEPH_CAP_FILE_WR) &&
      ci->i_wrbuffer_ref_head == 0) {
   dout("queue_cap_snap %p "
        "no new_snap|dirty_page|writing\n", inode);
   goto update_snapc;
  }
 }

 dout("queue_cap_snap %p cap_snap %p queuing under %p %s %s\n",
      inode, capsnap, old_snapc, ceph_cap_string(dirty),
      capsnap->need_flush ? "" : "no_flush");
 ihold(inode);

 refcount_set(&capsnap->nref, 1);
 INIT_LIST_HEAD(&capsnap->ci_item);

 capsnap->follows = old_snapc->seq;
 capsnap->issued = __ceph_caps_issued(ci, ((void*)0));
 capsnap->dirty = dirty;

 capsnap->mode = inode->i_mode;
 capsnap->uid = inode->i_uid;
 capsnap->gid = inode->i_gid;

 if (dirty & CEPH_CAP_XATTR_EXCL) {
  old_blob = __ceph_build_xattrs_blob(ci);
  capsnap->xattr_blob =
   ceph_buffer_get(ci->i_xattrs.blob);
  capsnap->xattr_version = ci->i_xattrs.version;
 } else {
  capsnap->xattr_blob = ((void*)0);
  capsnap->xattr_version = 0;
 }

 capsnap->inline_data = ci->i_inline_version != CEPH_INLINE_NONE;




 capsnap->dirty_pages = ci->i_wrbuffer_ref_head;
 ci->i_wrbuffer_ref_head = 0;
 capsnap->context = old_snapc;
 list_add_tail(&capsnap->ci_item, &ci->i_cap_snaps);

 if (used & CEPH_CAP_FILE_WR) {
  dout("queue_cap_snap %p cap_snap %p snapc %p"
       " seq %llu used WR, now pending\n", inode,
       capsnap, old_snapc, old_snapc->seq);
  capsnap->writing = 1;
 } else {

  __ceph_finish_cap_snap(ci, capsnap);
 }
 capsnap = ((void*)0);
 old_snapc = ((void*)0);

update_snapc:
       if (ci->i_wrbuffer_ref_head == 0 &&
           ci->i_wr_ref == 0 &&
           ci->i_dirty_caps == 0 &&
           ci->i_flushing_caps == 0) {
               ci->i_head_snapc = ((void*)0);
       } else {
  ci->i_head_snapc = ceph_get_snap_context(new_snapc);
  dout(" new snapc is %p\n", new_snapc);
 }
 spin_unlock(&ci->i_ceph_lock);

 ceph_buffer_put(old_blob);
 kfree(capsnap);
 ceph_put_snap_context(old_snapc);
}
