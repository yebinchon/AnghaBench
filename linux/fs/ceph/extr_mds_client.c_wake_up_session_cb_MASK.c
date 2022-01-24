#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_cap_wq; int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_ceph_flags; scalar_t__ i_requested_max_size; scalar_t__ i_wanted_max_size; } ;
struct ceph_cap {scalar_t__ cap_gen; int mds_wanted; int /*<<< orphan*/  implemented; int /*<<< orphan*/  issued; TYPE_1__* session; } ;
struct TYPE_2__ {scalar_t__ s_cap_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_PIN ; 
 int /*<<< orphan*/  CEPH_I_CAP_DROPPED ; 
 unsigned long FORCE_RO ; 
 unsigned long RECONNECT ; 
 unsigned long RENEWCAPS ; 
 int FUNC0 (struct ceph_inode_info*) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct ceph_cap *cap,
			      void *arg)
{
	struct ceph_inode_info *ci = FUNC1(inode);
	unsigned long ev = (unsigned long)arg;

	if (ev == RECONNECT) {
		FUNC2(&ci->i_ceph_lock);
		ci->i_wanted_max_size = 0;
		ci->i_requested_max_size = 0;
		FUNC3(&ci->i_ceph_lock);
	} else if (ev == RENEWCAPS) {
		if (cap->cap_gen < cap->session->s_cap_gen) {
			/* mds did not re-issue stale cap */
			FUNC2(&ci->i_ceph_lock);
			cap->issued = cap->implemented = CEPH_CAP_PIN;
			/* make sure mds knows what we want */
			if (FUNC0(ci) & ~cap->mds_wanted)
				ci->i_ceph_flags |= CEPH_I_CAP_DROPPED;
			FUNC3(&ci->i_ceph_lock);
		}
	} else if (ev == FORCE_RO) {
	}
	FUNC4(&ci->i_cap_wq);
	return 0;
}