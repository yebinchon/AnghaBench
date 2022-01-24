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
struct ceph_snap_realm {int dummy; } ;
struct ceph_mds_client {int /*<<< orphan*/  snap_rwsem; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_snap_realm*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ceph_snap_realm* FUNC4 (struct ceph_mds_client*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct inode *old, struct inode *new)
{
	struct ceph_mds_client *mdsc = FUNC1(old)->mdsc;
	struct ceph_snap_realm *old_realm, *new_realm;
	bool is_same;

restart:
	/*
	 * We need to lookup 2 quota realms atomically, i.e. with snap_rwsem.
	 * However, get_quota_realm may drop it temporarily.  By setting the
	 * 'retry' parameter to 'false', we'll get -EAGAIN if the rwsem was
	 * dropped and we can then restart the whole operation.
	 */
	FUNC3(&mdsc->snap_rwsem);
	old_realm = FUNC4(mdsc, old, true);
	new_realm = FUNC4(mdsc, new, false);
	if (FUNC0(new_realm) == -EAGAIN) {
		FUNC5(&mdsc->snap_rwsem);
		if (old_realm)
			FUNC2(mdsc, old_realm);
		goto restart;
	}
	is_same = (old_realm == new_realm);
	FUNC5(&mdsc->snap_rwsem);

	if (old_realm)
		FUNC2(mdsc, old_realm);
	if (new_realm)
		FUNC2(mdsc, new_realm);

	return is_same;
}