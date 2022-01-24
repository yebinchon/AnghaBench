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
struct dwc2_qh {int /*<<< orphan*/  ls_start_schedule_slice; int /*<<< orphan*/  device_interval; int /*<<< orphan*/  device_us; } ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWC2_LS_PERIODIC_SLICES_PER_FRAME ; 
 int /*<<< orphan*/  DWC2_LS_SCHEDULE_FRAMES ; 
 int /*<<< orphan*/  DWC2_US_PER_SLICE ; 
 unsigned long* FUNC1 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dwc2_hsotg *hsotg,
				    struct dwc2_qh *qh)
{
	int slices = FUNC0(qh->device_us, DWC2_US_PER_SLICE);
	unsigned long *map = FUNC1(hsotg, qh);

	/* Schedule should have failed, so no worries about no error code */
	if (!map)
		return;

	FUNC2(map, DWC2_LS_PERIODIC_SLICES_PER_FRAME,
			DWC2_LS_SCHEDULE_FRAMES, slices, qh->device_interval,
			qh->ls_start_schedule_slice);
}