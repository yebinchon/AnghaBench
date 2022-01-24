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
struct dwc2_qh {scalar_t__ host_us; scalar_t__ device_us; scalar_t__ host_interval; scalar_t__ device_interval; int num_hs_transfers; TYPE_1__* hs_transfers; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_2__ {scalar_t__ duration_us; scalar_t__ start_schedule_us; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dwc2_hsotg*,struct dwc2_qh*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
	/* In non-split host and device time are the same */
	FUNC0(qh->host_us != qh->device_us);
	FUNC0(qh->host_interval != qh->device_interval);
	FUNC0(qh->num_hs_transfers != 1);

	/* We'll have one transfer; init start to 0 before calling scheduler */
	qh->hs_transfers[0].start_schedule_us = 0;
	qh->hs_transfers[0].duration_us = qh->host_us;

	return FUNC1(hsotg, qh, false, 0);
}