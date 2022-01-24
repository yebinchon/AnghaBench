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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int len; void* name; int /*<<< orphan*/  hash; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; } ;
struct ceph_vino {struct inode* ino; int /*<<< orphan*/  snap; } ;
struct TYPE_4__ {int iov_len; struct ceph_mds_lease* iov_base; } ;
struct ceph_msg {TYPE_2__ front; } ;
struct ceph_mds_session {int s_mds; int /*<<< orphan*/  s_mutex; int /*<<< orphan*/  s_con; int /*<<< orphan*/  s_cap_gen; int /*<<< orphan*/  s_seq; } ;
struct ceph_mds_lease {int action; int /*<<< orphan*/  duration_ms; int /*<<< orphan*/  seq; int /*<<< orphan*/  ino; } ;
struct ceph_mds_client {TYPE_1__* fsc; } ;
struct ceph_dentry_info {int /*<<< orphan*/  lease_renew_from; int /*<<< orphan*/  lease_renew_after; int /*<<< orphan*/  time; int /*<<< orphan*/  lease_seq; int /*<<< orphan*/  lease_gen; struct ceph_mds_session* lease_session; } ;
struct TYPE_3__ {struct super_block* sb; } ;

/* Variables and functions */
#define  CEPH_MDS_LEASE_RENEW 129 
#define  CEPH_MDS_LEASE_REVOKE 128 
 int CEPH_MDS_LEASE_REVOKE_ACK ; 
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ceph_msg*) ; 
 struct ceph_dentry_info* FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (struct super_block*,struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC11 (struct inode*) ; 
 struct dentry* FUNC12 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,void*,int) ; 
 int FUNC16 (struct ceph_mds_lease*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC25(struct ceph_mds_client *mdsc,
			 struct ceph_mds_session *session,
			 struct ceph_msg *msg)
{
	struct super_block *sb = mdsc->fsc->sb;
	struct inode *inode;
	struct dentry *parent, *dentry;
	struct ceph_dentry_info *di;
	int mds = session->s_mds;
	struct ceph_mds_lease *h = msg->front.iov_base;
	u32 seq;
	struct ceph_vino vino;
	struct qstr dname;
	int release = 0;

	FUNC13("handle_lease from mds%d\n", mds);

	/* decode */
	if (msg->front.iov_len < sizeof(*h) + sizeof(u32))
		goto bad;
	vino.ino = FUNC18(h->ino);
	vino.snap = CEPH_NOSNAP;
	seq = FUNC17(h->seq);
	dname.len = FUNC16(h + 1);
	if (msg->front.iov_len < sizeof(*h) + sizeof(u32) + dname.len)
		goto bad;
	dname.name = (void *)(h + 1) + sizeof(u32);

	/* lookup inode */
	inode = FUNC5(sb, vino);
	FUNC13("handle_lease %s, ino %llx %p %.*s\n",
	     FUNC6(h->action), vino.ino, inode,
	     dname.len, dname.name);

	FUNC20(&session->s_mutex);
	session->s_seq++;

	if (!inode) {
		FUNC13("handle_lease no inode %llx\n", vino.ino);
		goto release;
	}

	/* dentry */
	parent = FUNC11(inode);
	if (!parent) {
		FUNC13("no parent dentry on inode %p\n", inode);
		FUNC0(1);
		goto release;  /* hrm... */
	}
	dname.hash = FUNC15(parent, dname.name, dname.len);
	dentry = FUNC12(parent, &dname);
	FUNC14(parent);
	if (!dentry)
		goto release;

	FUNC23(&dentry->d_lock);
	di = FUNC4(dentry);
	switch (h->action) {
	case CEPH_MDS_LEASE_REVOKE:
		if (di->lease_session == session) {
			if (FUNC9(di->lease_seq, seq) > 0)
				h->seq = FUNC10(di->lease_seq);
			FUNC1(dentry);
		}
		release = 1;
		break;

	case CEPH_MDS_LEASE_RENEW:
		if (di->lease_session == session &&
		    di->lease_gen == session->s_cap_gen &&
		    di->lease_renew_from &&
		    di->lease_renew_after == 0) {
			unsigned long duration =
				FUNC19(FUNC17(h->duration_ms));

			di->lease_seq = seq;
			di->time = di->lease_renew_from + duration;
			di->lease_renew_after = di->lease_renew_from +
				(duration >> 1);
			di->lease_renew_from = 0;
		}
		break;
	}
	FUNC24(&dentry->d_lock);
	FUNC14(dentry);

	if (!release)
		goto out;

release:
	/* let's just reuse the same message */
	h->action = CEPH_MDS_LEASE_REVOKE_ACK;
	FUNC8(msg);
	FUNC3(&session->s_con, msg);

out:
	FUNC21(&session->s_mutex);
	/* avoid calling iput_final() in mds dispatch threads */
	FUNC2(inode);
	return;

bad:
	FUNC22("corrupt lease message\n");
	FUNC7(msg);
}