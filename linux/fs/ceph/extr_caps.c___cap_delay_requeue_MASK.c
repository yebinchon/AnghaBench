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
struct ceph_mds_client {int /*<<< orphan*/  cap_delay_lock; int /*<<< orphan*/  cap_delay_list; int /*<<< orphan*/  stopping; } ;
struct ceph_inode_info {int i_ceph_flags; int /*<<< orphan*/  i_cap_delay_list; int /*<<< orphan*/  i_hold_caps_max; int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int CEPH_I_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ceph_mds_client *mdsc,
				struct ceph_inode_info *ci,
				bool set_timeout)
{
	FUNC1("__cap_delay_requeue %p flags %d at %lu\n", &ci->vfs_inode,
	     ci->i_ceph_flags, ci->i_hold_caps_max);
	if (!mdsc->stopping) {
		FUNC5(&mdsc->cap_delay_lock);
		if (!FUNC4(&ci->i_cap_delay_list)) {
			if (ci->i_ceph_flags & CEPH_I_FLUSH)
				goto no_change;
			FUNC3(&ci->i_cap_delay_list);
		}
		if (set_timeout)
			FUNC0(mdsc, ci);
		FUNC2(&ci->i_cap_delay_list, &mdsc->cap_delay_list);
no_change:
		FUNC6(&mdsc->cap_delay_lock);
	}
}