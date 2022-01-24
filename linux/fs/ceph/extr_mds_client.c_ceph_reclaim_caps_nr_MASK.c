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
struct ceph_mds_client {int /*<<< orphan*/  cap_reclaim_pending; } ;

/* Variables and functions */
 int CEPH_CAPS_PER_RELEASE ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*) ; 

void FUNC3(struct ceph_mds_client *mdsc, int nr)
{
	int val;
	if (!nr)
		return;
	val = FUNC0(nr, &mdsc->cap_reclaim_pending);
	if (!(val % CEPH_CAPS_PER_RELEASE)) {
		FUNC1(&mdsc->cap_reclaim_pending, 0);
		FUNC2(mdsc);
	}
}