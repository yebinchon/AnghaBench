#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ceph_mds_client {int /*<<< orphan*/  dentry_list_lock; } ;
struct ceph_dentry_info {int flags; int /*<<< orphan*/  lease_list; TYPE_1__* dentry; } ;
struct TYPE_4__ {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int CEPH_DENTRY_SHRINK_LIST ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ceph_dentry_info *di)
{
	struct ceph_mds_client *mdsc;
	if (di->flags & CEPH_DENTRY_SHRINK_LIST)
		return;
	if (FUNC2(&di->lease_list))
		return;

	mdsc = FUNC0(di->dentry->d_sb)->mdsc;
	FUNC3(&mdsc->dentry_list_lock);
	FUNC1(&di->lease_list);
	FUNC4(&mdsc->dentry_list_lock);
}