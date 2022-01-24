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
struct ceph_inode_info {int /*<<< orphan*/  i_work_mask; int /*<<< orphan*/  i_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  inode_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_I_WORK_INVALIDATE_PAGES ; 
 struct ceph_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct inode *inode)
{
	struct ceph_inode_info *ci = FUNC0(inode);
	FUNC6(CEPH_I_WORK_INVALIDATE_PAGES, &ci->i_work_mask);

	FUNC3(inode);
	if (FUNC5(FUNC1(inode)->inode_wq,
		       &FUNC0(inode)->i_work)) {
		FUNC2("ceph_queue_invalidate %p\n", inode);
	} else {
		FUNC2("ceph_queue_invalidate %p already queued, mask=%lx\n",
		     inode, ci->i_work_mask);
		FUNC4(inode);
	}
}