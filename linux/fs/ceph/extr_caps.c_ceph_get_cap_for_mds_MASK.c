#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_cap {int dummy; } ;

/* Variables and functions */
 struct ceph_cap* FUNC0 (struct ceph_inode_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct ceph_cap *FUNC3(struct ceph_inode_info *ci, int mds)
{
	struct ceph_cap *cap;

	FUNC1(&ci->i_ceph_lock);
	cap = FUNC0(ci, mds);
	FUNC2(&ci->i_ceph_lock);
	return cap;
}