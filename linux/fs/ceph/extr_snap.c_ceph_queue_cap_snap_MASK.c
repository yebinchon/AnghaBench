#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  seq; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct ceph_snap_context {int /*<<< orphan*/  seq; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {scalar_t__ version; int /*<<< orphan*/  blob; } ;
struct ceph_inode_info {scalar_t__ i_wrbuffer_ref_head; scalar_t__ i_inline_version; scalar_t__ i_wr_ref; scalar_t__ i_dirty_caps; scalar_t__ i_flushing_caps; int /*<<< orphan*/  i_ceph_lock; struct inode* i_head_snapc; int /*<<< orphan*/  i_cap_snaps; TYPE_2__ i_xattrs; TYPE_1__* i_snap_realm; struct inode vfs_inode; } ;
struct ceph_cap_snap {int need_flush; int dirty; int inline_data; scalar_t__ dirty_pages; int writing; int /*<<< orphan*/  ci_item; struct inode* context; scalar_t__ xattr_version; int /*<<< orphan*/ * xattr_blob; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  issued; int /*<<< orphan*/  follows; int /*<<< orphan*/  nref; } ;
struct ceph_buffer {int dummy; } ;
struct TYPE_3__ {struct inode* cached_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CEPH_CAP_ANY_EXCL ; 
 int CEPH_CAP_FILE_WR ; 
 int CEPH_CAP_XATTR_EXCL ; 
 scalar_t__ CEPH_INLINE_NONE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ceph_buffer* FUNC2 (struct ceph_inode_info*) ; 
 int FUNC3 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_inode_info*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_inode_info*,struct ceph_cap_snap*) ; 
 scalar_t__ FUNC7 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct inode* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct inode*,...) ; 
 scalar_t__ FUNC14 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct ceph_cap_snap*) ; 
 struct ceph_cap_snap* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void FUNC23(struct ceph_inode_info *ci)
{
	struct inode *inode = &ci->vfs_inode;
	struct ceph_cap_snap *capsnap;
	struct ceph_snap_context *old_snapc, *new_snapc;
	struct ceph_buffer *old_blob = NULL;
	int used, dirty;

	capsnap = FUNC17(sizeof(*capsnap), GFP_NOFS);
	if (!capsnap) {
		FUNC19("ENOMEM allocating ceph_cap_snap on %p\n", inode);
		return;
	}

	FUNC21(&ci->i_ceph_lock);
	used = FUNC5(ci);
	dirty = FUNC3(ci);

	old_snapc = ci->i_head_snapc;
	new_snapc = ci->i_snap_realm->cached_context;

	/*
	 * If there is a write in progress, treat that as a dirty Fw,
	 * even though it hasn't completed yet; by the time we finish
	 * up this capsnap it will be.
	 */
	if (used & CEPH_CAP_FILE_WR)
		dirty |= CEPH_CAP_FILE_WR;

	if (FUNC7(ci)) {
		/* there is no point in queuing multiple "pending" cap_snaps,
		   as no new writes are allowed to start when pending, so any
		   writes in progress now were started before the previous
		   cap_snap.  lucky us. */
		FUNC13("queue_cap_snap %p already pending\n", inode);
		goto update_snapc;
	}
	if (ci->i_wrbuffer_ref_head == 0 &&
	    !(dirty & (CEPH_CAP_ANY_EXCL|CEPH_CAP_FILE_WR))) {
		FUNC13("queue_cap_snap %p nothing dirty|writing\n", inode);
		goto update_snapc;
	}

	FUNC0(!old_snapc);

	/*
	 * There is no need to send FLUSHSNAP message to MDS if there is
	 * no new snapshot. But when there is dirty pages or on-going
	 * writes, we still need to create cap_snap. cap_snap is needed
	 * by the write path and page writeback path.
	 *
	 * also see ceph_try_drop_cap_snap()
	 */
	if (FUNC14(old_snapc, new_snapc)) {
		if (dirty & (CEPH_CAP_ANY_EXCL|CEPH_CAP_FILE_WR))
			capsnap->need_flush = true;
	} else {
		if (!(used & CEPH_CAP_FILE_WR) &&
		    ci->i_wrbuffer_ref_head == 0) {
			FUNC13("queue_cap_snap %p "
			     "no new_snap|dirty_page|writing\n", inode);
			goto update_snapc;
		}
	}

	FUNC13("queue_cap_snap %p cap_snap %p queuing under %p %s %s\n",
	     inode, capsnap, old_snapc, FUNC10(dirty),
	     capsnap->need_flush ? "" : "no_flush");
	FUNC15(inode);

	FUNC20(&capsnap->nref, 1);
	FUNC1(&capsnap->ci_item);

	capsnap->follows = old_snapc->seq;
	capsnap->issued = FUNC4(ci, NULL);
	capsnap->dirty = dirty;

	capsnap->mode = inode->i_mode;
	capsnap->uid = inode->i_uid;
	capsnap->gid = inode->i_gid;

	if (dirty & CEPH_CAP_XATTR_EXCL) {
		old_blob = FUNC2(ci);
		capsnap->xattr_blob =
			FUNC8(ci->i_xattrs.blob);
		capsnap->xattr_version = ci->i_xattrs.version;
	} else {
		capsnap->xattr_blob = NULL;
		capsnap->xattr_version = 0;
	}

	capsnap->inline_data = ci->i_inline_version != CEPH_INLINE_NONE;

	/* dirty page count moved from _head to this cap_snap;
	   all subsequent writes page dirties occur _after_ this
	   snapshot. */
	capsnap->dirty_pages = ci->i_wrbuffer_ref_head;
	ci->i_wrbuffer_ref_head = 0;
	capsnap->context = old_snapc;
	FUNC18(&capsnap->ci_item, &ci->i_cap_snaps);

	if (used & CEPH_CAP_FILE_WR) {
		FUNC13("queue_cap_snap %p cap_snap %p snapc %p"
		     " seq %llu used WR, now pending\n", inode,
		     capsnap, old_snapc, old_snapc->seq);
		capsnap->writing = 1;
	} else {
		/* note mtime, size NOW. */
		FUNC6(ci, capsnap);
	}
	capsnap = NULL;
	old_snapc = NULL;

update_snapc:
       if (ci->i_wrbuffer_ref_head == 0 &&
           ci->i_wr_ref == 0 &&
           ci->i_dirty_caps == 0 &&
           ci->i_flushing_caps == 0) {
               ci->i_head_snapc = NULL;
       } else {
		ci->i_head_snapc = FUNC11(new_snapc);
		FUNC13(" new snapc is %p\n", new_snapc);
	}
	FUNC22(&ci->i_ceph_lock);

	FUNC9(old_blob);
	FUNC16(capsnap);
	FUNC12(old_snapc);
}