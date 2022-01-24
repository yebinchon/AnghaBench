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
struct ceph_snap_realm {int /*<<< orphan*/  empty_item; int /*<<< orphan*/  nref; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_empty_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_snap_realm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ceph_mds_client *mdsc,
			 struct ceph_snap_realm *realm)
{
	FUNC2("get_realm %p %d -> %d\n", realm,
	     FUNC1(&realm->nref), FUNC1(&realm->nref)+1);
	/*
	 * since we _only_ increment realm refs or empty the empty
	 * list with snap_rwsem held, adjusting the empty list here is
	 * safe.  we do need to protect against concurrent empty list
	 * additions, however.
	 */
	if (FUNC0(&realm->nref) == 1) {
		FUNC4(&mdsc->snap_empty_lock);
		FUNC3(&realm->empty_item);
		FUNC5(&mdsc->snap_empty_lock);
	}
}