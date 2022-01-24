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
typedef  scalar_t__ u64 ;
struct ceph_snap_realm {scalar_t__ parent_ino; int /*<<< orphan*/  children; int /*<<< orphan*/  child_item; struct ceph_snap_realm* parent; int /*<<< orphan*/  ino; } ;
struct ceph_mds_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ceph_snap_realm*) ; 
 int FUNC1 (struct ceph_snap_realm*) ; 
 struct ceph_snap_realm* FUNC2 (struct ceph_mds_client*,scalar_t__) ; 
 struct ceph_snap_realm* FUNC3 (struct ceph_mds_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct ceph_snap_realm*,scalar_t__,struct ceph_snap_realm*,scalar_t__,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ceph_mds_client *mdsc,
				    struct ceph_snap_realm *realm,
				    u64 parentino)
{
	struct ceph_snap_realm *parent;

	if (realm->parent_ino == parentino)
		return 0;

	parent = FUNC3(mdsc, parentino);
	if (!parent) {
		parent = FUNC2(mdsc, parentino);
		if (FUNC0(parent))
			return FUNC1(parent);
	}
	FUNC5("adjust_snap_realm_parent %llx %p: %llx %p -> %llx %p\n",
	     realm->ino, realm, realm->parent_ino, realm->parent,
	     parentino, parent);
	if (realm->parent) {
		FUNC7(&realm->child_item);
		FUNC4(mdsc, realm->parent);
	}
	realm->parent_ino = parentino;
	realm->parent = parent;
	FUNC6(&realm->child_item, &parent->children);
	return 1;
}