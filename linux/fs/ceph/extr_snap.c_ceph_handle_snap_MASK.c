#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_vino {scalar_t__ ino; int /*<<< orphan*/  snap; } ;
struct ceph_snap_realm {scalar_t__ created; int /*<<< orphan*/  ino; int /*<<< orphan*/  inodes_with_caps_lock; struct inode* inode; int /*<<< orphan*/  inodes_with_caps; } ;
struct TYPE_5__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_2__ front; } ;
struct ceph_mds_snap_realm {int /*<<< orphan*/  created; } ;
struct ceph_mds_snap_head {int /*<<< orphan*/  trace_len; int /*<<< orphan*/  num_split_realms; int /*<<< orphan*/  num_split_inos; int /*<<< orphan*/  split; int /*<<< orphan*/  op; } ;
struct ceph_mds_session {int s_mds; int /*<<< orphan*/  s_mutex; int /*<<< orphan*/  s_seq; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_rwsem; TYPE_1__* fsc; } ;
struct TYPE_6__ {int /*<<< orphan*/  ino; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; TYPE_3__ i_vino; struct ceph_snap_realm* i_snap_realm; int /*<<< orphan*/  i_snap_realm_item; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {struct super_block* sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int CEPH_SNAP_OP_DESTROY ; 
 int CEPH_SNAP_OP_SPLIT ; 
 scalar_t__ FUNC0 (struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*) ; 
 struct ceph_snap_realm* FUNC2 (struct ceph_mds_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*,struct ceph_snap_realm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct ceph_snap_realm* FUNC5 (struct ceph_mds_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void**,void*,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (struct super_block*,struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 struct ceph_inode_info* FUNC9 (struct inode*) ; 
 struct ceph_snap_realm* FUNC10 (struct ceph_mds_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ceph_mds_client*,void*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,struct ceph_snap_realm*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ceph_mds_client*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

void FUNC28(struct ceph_mds_client *mdsc,
		      struct ceph_mds_session *session,
		      struct ceph_msg *msg)
{
	struct super_block *sb = mdsc->fsc->sb;
	int mds = session->s_mds;
	u64 split;
	int op;
	int trace_len;
	struct ceph_snap_realm *realm = NULL;
	void *p = msg->front.iov_base;
	void *e = p + msg->front.iov_len;
	struct ceph_mds_snap_head *h;
	int num_split_inos, num_split_realms;
	__le64 *split_inos = NULL, *split_realms = NULL;
	int i;
	int locked_rwsem = 0;

	/* decode */
	if (msg->front.iov_len < sizeof(*h))
		goto bad;
	h = p;
	op = FUNC18(h->op);
	split = FUNC19(h->split);   /* non-zero if we are splitting an
					  * existing realm */
	num_split_inos = FUNC18(h->num_split_inos);
	num_split_realms = FUNC18(h->num_split_realms);
	trace_len = FUNC18(h->trace_len);
	p += sizeof(*h);

	FUNC15("handle_snap from mds%d op %s split %llx tracelen %d\n", mds,
	     FUNC13(op), split, trace_len);

	FUNC22(&session->s_mutex);
	session->s_seq++;
	FUNC23(&session->s_mutex);

	FUNC16(&mdsc->snap_rwsem);
	locked_rwsem = 1;

	if (op == CEPH_SNAP_OP_SPLIT) {
		struct ceph_mds_snap_realm *ri;

		/*
		 * A "split" breaks part of an existing realm off into
		 * a new realm.  The MDS provides a list of inodes
		 * (with caps) and child realms that belong to the new
		 * child.
		 */
		split_inos = p;
		p += sizeof(u64) * num_split_inos;
		split_realms = p;
		p += sizeof(u64) * num_split_realms;
		FUNC6(&p, e, sizeof(*ri), bad);
		/* we will peek at realm info here, but will _not_
		 * advance p, as the realm update will occur below in
		 * ceph_update_snap_trace. */
		ri = p;

		realm = FUNC10(mdsc, split);
		if (!realm) {
			realm = FUNC5(mdsc, split);
			if (FUNC0(realm))
				goto out;
		}

		FUNC15("splitting snap_realm %llx %p\n", realm->ino, realm);
		for (i = 0; i < num_split_inos; i++) {
			struct ceph_vino vino = {
				.ino = FUNC19(split_inos[i]),
				.snap = CEPH_NOSNAP,
			};
			struct inode *inode = FUNC7(sb, vino);
			struct ceph_inode_info *ci;
			struct ceph_snap_realm *oldrealm;

			if (!inode)
				continue;
			ci = FUNC9(inode);

			FUNC25(&ci->i_ceph_lock);
			if (!ci->i_snap_realm)
				goto skip_inode;
			/*
			 * If this inode belongs to a realm that was
			 * created after our new realm, we experienced
			 * a race (due to another split notifications
			 * arriving from a different MDS).  So skip
			 * this inode.
			 */
			if (ci->i_snap_realm->created >
			    FUNC19(ri->created)) {
				FUNC15(" leaving %p in newer realm %llx %p\n",
				     inode, ci->i_snap_realm->ino,
				     ci->i_snap_realm);
				goto skip_inode;
			}
			FUNC15(" will move %p to split realm %llx %p\n",
			     inode, realm->ino, realm);
			/*
			 * Move the inode to the new realm
			 */
			oldrealm = ci->i_snap_realm;
			FUNC25(&oldrealm->inodes_with_caps_lock);
			FUNC21(&ci->i_snap_realm_item);
			FUNC26(&oldrealm->inodes_with_caps_lock);

			FUNC25(&realm->inodes_with_caps_lock);
			FUNC20(&ci->i_snap_realm_item,
				 &realm->inodes_with_caps);
			ci->i_snap_realm = realm;
			if (realm->ino == ci->i_vino.ino)
                                realm->inode = inode;
			FUNC26(&realm->inodes_with_caps_lock);

			FUNC26(&ci->i_ceph_lock);

			FUNC8(mdsc, realm);
			FUNC12(mdsc, oldrealm);

			/* avoid calling iput_final() while holding
			 * mdsc->snap_rwsem or mds in dispatch threads */
			FUNC4(inode);
			continue;

skip_inode:
			FUNC26(&ci->i_ceph_lock);
			FUNC4(inode);
		}

		/* we may have taken some of the old realm's children. */
		for (i = 0; i < num_split_realms; i++) {
			struct ceph_snap_realm *child =
				FUNC2(mdsc,
					   FUNC19(split_realms[i]));
			if (!child)
				continue;
			FUNC3(mdsc, child, realm->ino);
		}
	}

	/*
	 * update using the provided snap trace. if we are deleting a
	 * snap, we can avoid queueing cap_snaps.
	 */
	FUNC14(mdsc, p, e,
			       op == CEPH_SNAP_OP_DESTROY, NULL);

	if (op == CEPH_SNAP_OP_SPLIT)
		/* we took a reference when we created the realm, above */
		FUNC12(mdsc, realm);

	FUNC1(mdsc);

	FUNC27(&mdsc->snap_rwsem);

	FUNC17(mdsc);
	return;

bad:
	FUNC24("corrupt snap message from mds%d\n", mds);
	FUNC11(msg);
out:
	if (locked_rwsem)
		FUNC27(&mdsc->snap_rwsem);
	return;
}