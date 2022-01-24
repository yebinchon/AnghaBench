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
struct inode {int dummy; } ;
struct ceph_vino {void* snap; void* ino; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_reply_info_parsed {int dir_nr; struct ceph_mds_reply_dir_entry* dir_entries; } ;
struct ceph_mds_request {int /*<<< orphan*/  r_caps_reservation; int /*<<< orphan*/  r_request_started; TYPE_2__* r_dentry; struct ceph_mds_reply_info_parsed r_reply_info; } ;
struct TYPE_6__ {TYPE_1__* in; } ;
struct ceph_mds_reply_dir_entry {TYPE_3__ inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  snapid; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,struct ceph_mds_session*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct inode*,int) ; 

__attribute__((used)) static int FUNC8(struct ceph_mds_request *req,
					   struct ceph_mds_session *session)
{
	struct ceph_mds_reply_info_parsed *rinfo = &req->r_reply_info;
	int i, err = 0;

	for (i = 0; i < rinfo->dir_nr; i++) {
		struct ceph_mds_reply_dir_entry *rde = rinfo->dir_entries + i;
		struct ceph_vino vino;
		struct inode *in;
		int rc;

		vino.ino = FUNC6(rde->inode.in->ino);
		vino.snap = FUNC6(rde->inode.in->snapid);

		in = FUNC3(req->r_dentry->d_sb, vino);
		if (FUNC0(in)) {
			err = FUNC1(in);
			FUNC4("new_inode badness got %d\n", err);
			continue;
		}
		rc = FUNC5(in, NULL, &rde->inode, NULL, session,
				req->r_request_started, -1,
				&req->r_caps_reservation);
		if (rc < 0) {
			FUNC7("fill_inode badness on %p got %d\n", in, rc);
			err = rc;
		}
		/* avoid calling iput_final() in mds dispatch threads */
		FUNC2(in);
	}

	return err;
}