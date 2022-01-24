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
struct ceph_inode_info {int /*<<< orphan*/  i_truncate_mutex; int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_rdcache_gen; int /*<<< orphan*/  i_fscache_gen; int /*<<< orphan*/  fscache; int /*<<< orphan*/  i_vino; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ceph_inode_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ceph_inode_info *ci)
{
	if (FUNC0(ci))
		return;

	/* resue i_truncate_mutex. There should be no pending
	 * truncate while the caller holds CEPH_CAP_FILE_RD */
	FUNC3(&ci->i_truncate_mutex);
	if (!FUNC0(ci)) {
		if (FUNC1(ci->fscache, &ci->i_vino))
			FUNC2(ci->fscache);
		FUNC5(&ci->i_ceph_lock);
		ci->i_fscache_gen = ci->i_rdcache_gen;
		FUNC6(&ci->i_ceph_lock);
	}
	FUNC4(&ci->i_truncate_mutex);
}