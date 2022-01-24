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
struct ceph_mds_client {int /*<<< orphan*/  num_sessions; TYPE_1__* fsc; } ;
struct TYPE_2__ {int /*<<< orphan*/  mount_state; } ;

/* Variables and functions */
 scalar_t__ CEPH_MOUNT_SHUTDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ceph_mds_client *mdsc, int skipped)
{
	if (FUNC0(mdsc->fsc->mount_state) == CEPH_MOUNT_SHUTDOWN)
		return true;
	return FUNC1(&mdsc->num_sessions) <= skipped;
}