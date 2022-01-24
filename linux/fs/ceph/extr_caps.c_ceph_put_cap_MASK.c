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
struct ceph_mds_client {scalar_t__ caps_total_count; scalar_t__ caps_use_count; scalar_t__ caps_reserve_count; scalar_t__ caps_avail_count; scalar_t__ caps_min_count; int /*<<< orphan*/  caps_list_lock; int /*<<< orphan*/  caps_list; } ;
struct ceph_cap {int /*<<< orphan*/  caps_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ceph_cap_cachep ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_cap*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ceph_cap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ceph_mds_client *mdsc, struct ceph_cap *cap)
{
	FUNC4(&mdsc->caps_list_lock);
	FUNC1("put_cap %p %d = %d used + %d resv + %d avail\n",
	     cap, mdsc->caps_total_count, mdsc->caps_use_count,
	     mdsc->caps_reserve_count, mdsc->caps_avail_count);
	mdsc->caps_use_count--;
	/*
	 * Keep some preallocated caps around (ceph_min_count), to
	 * avoid lots of free/alloc churn.
	 */
	if (mdsc->caps_avail_count >= mdsc->caps_reserve_count +
				      mdsc->caps_min_count) {
		mdsc->caps_total_count--;
		FUNC2(ceph_cap_cachep, cap);
	} else {
		mdsc->caps_avail_count++;
		FUNC3(&cap->caps_item, &mdsc->caps_list);
	}

	FUNC0(mdsc->caps_total_count != mdsc->caps_use_count +
	       mdsc->caps_reserve_count + mdsc->caps_avail_count);
	FUNC5(&mdsc->caps_list_lock);
}