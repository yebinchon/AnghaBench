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
struct ceph_inode_info {scalar_t__ i_max_size; scalar_t__ i_wanted_max_size; scalar_t__ i_requested_max_size; int /*<<< orphan*/  i_ceph_lock; TYPE_1__* i_auth_cap; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int issued; } ;

/* Variables and functions */
 int CEPH_CAP_FILE_WR ; 
 int /*<<< orphan*/  CHECK_CAPS_AUTHONLY ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *inode, loff_t endoff)
{
	struct ceph_inode_info *ci = FUNC1(inode);
	int check = 0;

	/* do we need to explicitly request a larger max_size? */
	FUNC3(&ci->i_ceph_lock);
	if (endoff >= ci->i_max_size && endoff > ci->i_wanted_max_size) {
		FUNC2("write %p at large endoff %llu, req max_size\n",
		     inode, endoff);
		ci->i_wanted_max_size = endoff;
	}
	/* duplicate ceph_check_caps()'s logic */
	if (ci->i_auth_cap &&
	    (ci->i_auth_cap->issued & CEPH_CAP_FILE_WR) &&
	    ci->i_wanted_max_size > ci->i_max_size &&
	    ci->i_wanted_max_size > ci->i_requested_max_size)
		check = 1;
	FUNC4(&ci->i_ceph_lock);
	if (check)
		FUNC0(ci, CHECK_CAPS_AUTHONLY, NULL);
}