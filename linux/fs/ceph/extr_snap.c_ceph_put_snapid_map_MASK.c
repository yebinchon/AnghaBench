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
struct ceph_snapid_map {int /*<<< orphan*/  lru; int /*<<< orphan*/  last_used; int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct ceph_mds_client {int /*<<< orphan*/  snapid_map_lock; int /*<<< orphan*/  snapid_map_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_snapid_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ceph_mds_client* mdsc,
			 struct ceph_snapid_map *sm)
{
	if (!sm)
		return;
	if (FUNC1(&sm->ref, &mdsc->snapid_map_lock)) {
		if (!FUNC0(&sm->node)) {
			sm->last_used = jiffies;
			FUNC3(&sm->lru, &mdsc->snapid_map_lru);
			FUNC4(&mdsc->snapid_map_lock);
		} else {
			/* already cleaned up by
			 * ceph_cleanup_snapid_map() */
			FUNC4(&mdsc->snapid_map_lock);
			FUNC2(sm);
		}
	}
}