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
struct dwc2_qh {int ls_start_schedule_slice; int /*<<< orphan*/  device_interval; int /*<<< orphan*/  device_us; } ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWC2_LS_PERIODIC_SLICES_PER_FRAME ; 
 int /*<<< orphan*/  DWC2_LS_SCHEDULE_FRAMES ; 
 int /*<<< orphan*/  DWC2_US_PER_SLICE ; 
 int EINVAL ; 
 unsigned long* FUNC1 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int FUNC2 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
				 int search_slice)
{
	int slices = FUNC0(qh->device_us, DWC2_US_PER_SLICE);
	unsigned long *map = FUNC1(hsotg, qh);
	int slice;

	if (!map)
		return -EINVAL;

	/*
	 * Schedule on the proper low speed map with our low speed scheduling
	 * parameters.  Note that we use the "device_interval" here since
	 * we want the low speed interval and the only way we'd be in this
	 * function is if the device is low speed.
	 *
	 * If we happen to be doing low speed and high speed scheduling for the
	 * same transaction (AKA we have a split) we always do low speed first.
	 * That means we can always pass "false" for only_one_period (that
	 * parameters is only useful when we're trying to get one schedule to
	 * match what we already planned in the other schedule).
	 */
	slice = FUNC2(map, DWC2_LS_PERIODIC_SLICES_PER_FRAME,
			      DWC2_LS_SCHEDULE_FRAMES, slices,
			      qh->device_interval, search_slice, false);

	if (slice < 0)
		return slice;

	qh->ls_start_schedule_slice = slice;
	return 0;
}