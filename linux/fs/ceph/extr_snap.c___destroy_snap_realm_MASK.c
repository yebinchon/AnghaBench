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
struct ceph_snap_realm {int /*<<< orphan*/  cached_context; struct ceph_snap_realm* snaps; struct ceph_snap_realm* prior_parent_snaps; scalar_t__ parent; int /*<<< orphan*/  child_item; int /*<<< orphan*/  node; int /*<<< orphan*/  ino; } ;
struct ceph_mds_client {int /*<<< orphan*/  num_snap_realms; int /*<<< orphan*/  snap_realms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_snap_realm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ceph_mds_client *mdsc,
				 struct ceph_snap_realm *realm)
{
	FUNC2("__destroy_snap_realm %p %llx\n", realm, realm->ino);

	FUNC5(&realm->node, &mdsc->snap_realms);
	mdsc->num_snap_realms--;

	if (realm->parent) {
		FUNC4(&realm->child_item);
		FUNC0(mdsc, realm->parent);
	}

	FUNC3(realm->prior_parent_snaps);
	FUNC3(realm->snaps);
	FUNC1(realm->cached_context);
	FUNC3(realm);
}