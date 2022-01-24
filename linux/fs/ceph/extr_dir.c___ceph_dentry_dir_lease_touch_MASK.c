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
struct ceph_mds_client {int /*<<< orphan*/  dentry_list_lock; } ;
struct ceph_dentry_info {int flags; int /*<<< orphan*/  lease_list; int /*<<< orphan*/  offset; struct dentry* dentry; } ;
typedef  struct ceph_mds_client* mdsc ;
typedef  struct ceph_dentry_info* di ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int CEPH_DENTRY_LEASE_LIST ; 
 int CEPH_DENTRY_REFERENCED ; 
 int CEPH_DENTRY_SHRINK_LIST ; 
 int FUNC0 (struct ceph_mds_client*,struct ceph_dentry_info*) ; 
 scalar_t__ FUNC1 (struct ceph_dentry_info*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ceph_dentry_info*,struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ceph_dentry_info *di)
{
	struct dentry *dn = di->dentry;
	struct ceph_mds_client *mdsc;

	FUNC3("dentry_dir_lease_touch %p %p '%pd' (offset %lld)\n",
	     di, dn, dn, di->offset);

	if (!FUNC4(&di->lease_list)) {
		if (di->flags & CEPH_DENTRY_LEASE_LIST) {
			/* don't remove dentry from dentry lease list
			 * if its lease is valid */
			if (FUNC1(di))
				return;
		} else {
			di->flags |= CEPH_DENTRY_REFERENCED;
			return;
		}
	}

	if (di->flags & CEPH_DENTRY_SHRINK_LIST) {
		di->flags |= CEPH_DENTRY_REFERENCED;
		di->flags &= ~CEPH_DENTRY_LEASE_LIST;
		return;
	}

	mdsc = FUNC2(dn->d_sb)->mdsc;
	FUNC5(&mdsc->dentry_list_lock);
	FUNC0(mdsc, di),
	FUNC6(&mdsc->dentry_list_lock);
}