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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {struct knav_pdsp_info* pdsp; } ;
struct knav_range_info {struct knav_device* kdev; TYPE_1__ acc_info; } ;
struct knav_queue_inst {int notify_needed; TYPE_2__* acc; int /*<<< orphan*/  desc_count; } ;
struct knav_pdsp_info {scalar_t__ intd; } ;
struct knav_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int channel; int /*<<< orphan*/  name; int /*<<< orphan*/  retrigger_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct knav_range_info *range,
				struct knav_queue_inst *kq,
				bool enabled)
{
	struct knav_pdsp_info *pdsp = range->acc_info.pdsp;
	struct knav_device *kdev = range->kdev;
	u32 mask, offset;

	/*
	 * when enabling, we need to re-trigger an interrupt if we
	 * have descriptors pending
	 */
	if (!enabled || FUNC3(&kq->desc_count) <= 0)
		return 0;

	kq->notify_needed = 1;
	FUNC2(&kq->acc->retrigger_count);
	mask = FUNC1(kq->acc->channel % 32);
	offset = FUNC0(kq->acc->channel);
	FUNC4(kdev->dev, "setup-notify: re-triggering irq for %s\n",
		kq->acc->name);
	FUNC5(mask, pdsp->intd + offset);
	return 0;
}