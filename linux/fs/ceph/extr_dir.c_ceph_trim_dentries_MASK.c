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
struct ceph_mds_client {scalar_t__ caps_use_max; scalar_t__ caps_use_count; TYPE_2__* fsc; int /*<<< orphan*/  caps_list_lock; } ;
struct ceph_lease_walk_control {int dir_lease; int nr_to_scan; int expire_dir_lease; int dir_lease_ttl; } ;
struct TYPE_4__ {TYPE_1__* mount_options; } ;
struct TYPE_3__ {int caps_wanted_delay_max; } ;

/* Variables and functions */
 int CEPH_CAPS_PER_RELEASE ; 
 int EAGAIN ; 
 int HZ ; 
 int /*<<< orphan*/  __dentry_lease_check ; 
 unsigned long FUNC0 (struct ceph_mds_client*,struct ceph_lease_walk_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __dir_lease_check ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ceph_mds_client *mdsc)
{
	struct ceph_lease_walk_control lwc;
	unsigned long count;
	unsigned long freed;

	FUNC1(&mdsc->caps_list_lock);
        if (mdsc->caps_use_max > 0 &&
            mdsc->caps_use_count > mdsc->caps_use_max)
		count = mdsc->caps_use_count - mdsc->caps_use_max;
	else
		count = 0;
        FUNC2(&mdsc->caps_list_lock);

	lwc.dir_lease = false;
	lwc.nr_to_scan  = CEPH_CAPS_PER_RELEASE * 2;
	freed = FUNC0(mdsc, &lwc, __dentry_lease_check);
	if (!lwc.nr_to_scan) /* more invalid leases */
		return -EAGAIN;

	if (lwc.nr_to_scan < CEPH_CAPS_PER_RELEASE)
		lwc.nr_to_scan = CEPH_CAPS_PER_RELEASE;

	lwc.dir_lease = true;
	lwc.expire_dir_lease = freed < count;
	lwc.dir_lease_ttl = mdsc->fsc->mount_options->caps_wanted_delay_max * HZ;
	freed +=FUNC0(mdsc, &lwc, __dir_lease_check);
	if (!lwc.nr_to_scan) /* more to check */
		return -EAGAIN;

	return freed > 0 ? 1 : 0;
}