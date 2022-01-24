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
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct ceph_mds_client {int /*<<< orphan*/  dentry_list_lock; int /*<<< orphan*/  dentry_leases; } ;
struct ceph_dentry_info {int flags; int /*<<< orphan*/  lease_list; struct dentry* dentry; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int CEPH_DENTRY_LEASE_LIST ; 
 int CEPH_DENTRY_REFERENCED ; 
 int CEPH_DENTRY_SHRINK_LIST ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_dentry_info*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ceph_dentry_info *di)
{
	struct dentry *dn = di->dentry;
	struct ceph_mds_client *mdsc;

	FUNC1("dentry_lease_touch %p %p '%pd'\n", di, dn, dn);

	di->flags |= CEPH_DENTRY_LEASE_LIST;
	if (di->flags & CEPH_DENTRY_SHRINK_LIST) {
		di->flags |= CEPH_DENTRY_REFERENCED;
		return;
	}

	mdsc = FUNC0(dn->d_sb)->mdsc;
	FUNC3(&mdsc->dentry_list_lock);
	FUNC2(&di->lease_list, &mdsc->dentry_leases);
	FUNC4(&mdsc->dentry_list_lock);
}