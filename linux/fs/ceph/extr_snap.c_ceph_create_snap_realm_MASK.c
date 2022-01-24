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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_snap_realm {int /*<<< orphan*/  ino; int /*<<< orphan*/  inodes_with_caps_lock; int /*<<< orphan*/  inodes_with_caps; int /*<<< orphan*/  dirty_item; int /*<<< orphan*/  empty_item; int /*<<< orphan*/  child_item; int /*<<< orphan*/  children; int /*<<< orphan*/  nref; } ;
struct ceph_mds_client {int /*<<< orphan*/  num_snap_realms; int /*<<< orphan*/  snap_realms; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ceph_snap_realm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct ceph_snap_realm*) ; 
 struct ceph_snap_realm* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ceph_snap_realm *FUNC7(
	struct ceph_mds_client *mdsc,
	u64 ino)
{
	struct ceph_snap_realm *realm;

	realm = FUNC5(sizeof(*realm), GFP_NOFS);
	if (!realm)
		return FUNC0(-ENOMEM);

	FUNC3(&realm->nref, 1);    /* for caller */
	realm->ino = ino;
	FUNC1(&realm->children);
	FUNC1(&realm->child_item);
	FUNC1(&realm->empty_item);
	FUNC1(&realm->dirty_item);
	FUNC1(&realm->inodes_with_caps);
	FUNC6(&realm->inodes_with_caps_lock);
	FUNC2(&mdsc->snap_realms, realm);
	mdsc->num_snap_realms++;

	FUNC4("create_snap_realm %llx %p\n", realm->ino, realm);
	return realm;
}