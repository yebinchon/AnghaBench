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
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_2__ d_name; int /*<<< orphan*/  d_parent; } ;
struct TYPE_3__ {struct ceph_mds_lease* iov_base; } ;
struct ceph_msg {int more_to_follow; TYPE_1__ front; } ;
struct ceph_mds_session {int /*<<< orphan*/  s_con; int /*<<< orphan*/  s_mds; } ;
struct ceph_mds_lease {char action; void* last; void* first; void* ino; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 char CEPH_MDS_LEASE_RELEASE ; 
 int /*<<< orphan*/  CEPH_MSG_CLIENT_LEASE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 struct ceph_msg* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ceph_mds_lease*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct ceph_mds_session *session,
			      struct dentry *dentry, char action,
			      u32 seq)
{
	struct ceph_msg *msg;
	struct ceph_mds_lease *lease;
	struct inode *dir;
	int len = sizeof(*lease) + sizeof(u32) + NAME_MAX;

	FUNC8("lease_send_msg identry %p %s to mds%d\n",
	     dentry, FUNC2(action), session->s_mds);

	msg = FUNC3(CEPH_MSG_CLIENT_LEASE, len, GFP_NOFS, false);
	if (!msg)
		return;
	lease = msg->front.iov_base;
	lease->action = action;
	lease->seq = FUNC5(seq);

	FUNC11(&dentry->d_lock);
	dir = FUNC7(dentry->d_parent);
	lease->ino = FUNC6(FUNC1(dir));
	lease->first = lease->last = FUNC6(FUNC4(dir));

	FUNC10(dentry->d_name.len, lease + 1);
	FUNC9((void *)(lease + 1) + 4,
	       dentry->d_name.name, dentry->d_name.len);
	FUNC12(&dentry->d_lock);
	/*
	 * if this is a preemptive lease RELEASE, no need to
	 * flush request stream, since the actual request will
	 * soon follow.
	 */
	msg->more_to_follow = (action == CEPH_MDS_LEASE_RELEASE);

	FUNC0(&session->s_con, msg);
}