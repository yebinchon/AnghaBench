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
struct ceph_mds_client {scalar_t__ caps_use_max; scalar_t__ caps_use_count; int /*<<< orphan*/  caps_list_lock; } ;
struct ceph_cap_reservation {int /*<<< orphan*/  used; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_cap_reservation*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ceph_mds_client *mdsc,
			 struct ceph_cap_reservation *ctx)
{
	bool reclaim = false;
	if (!ctx->count)
		return;

	FUNC2("unreserve caps ctx=%p count=%d\n", ctx, ctx->count);
	FUNC3(&mdsc->caps_list_lock);
	FUNC0(mdsc, ctx->count);
	ctx->count = 0;

	if (mdsc->caps_use_max > 0 &&
	    mdsc->caps_use_count > mdsc->caps_use_max)
		reclaim = true;
	FUNC4(&mdsc->caps_list_lock);

	if (reclaim)
		FUNC1(mdsc, ctx->used);
}