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
struct ceph_mds_client {int /*<<< orphan*/  cap_reclaim_work; TYPE_1__* fsc; scalar_t__ stopping; } ;
struct TYPE_2__ {int /*<<< orphan*/  cap_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct ceph_mds_client *mdsc)
{
	if (mdsc->stopping)
		return;

        if (FUNC1(mdsc->fsc->cap_wq, &mdsc->cap_reclaim_work)) {
                FUNC0("caps reclaim work queued\n");
        } else {
                FUNC0("failed to queue caps release work\n");
        }
}