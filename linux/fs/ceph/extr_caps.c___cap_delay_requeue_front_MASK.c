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
struct ceph_mds_client {int /*<<< orphan*/  cap_delay_lock; int /*<<< orphan*/  cap_delay_list; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_cap_delay_list; int /*<<< orphan*/  i_ceph_flags; int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_I_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ceph_mds_client *mdsc,
				      struct ceph_inode_info *ci)
{
	FUNC0("__cap_delay_requeue_front %p\n", &ci->vfs_inode);
	FUNC4(&mdsc->cap_delay_lock);
	ci->i_ceph_flags |= CEPH_I_FLUSH;
	if (!FUNC3(&ci->i_cap_delay_list))
		FUNC2(&ci->i_cap_delay_list);
	FUNC1(&ci->i_cap_delay_list, &mdsc->cap_delay_list);
	FUNC5(&mdsc->cap_delay_lock);
}