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
struct TYPE_2__ {int start_channel; } ;
struct knav_range_info {int queue_base; int flags; int num_queues; TYPE_1__ acc_info; struct knav_device* kdev; } ;
struct knav_queue_inst {scalar_t__ notify_needed; } ;
struct knav_device {int base_id; int /*<<< orphan*/  dev; } ;
struct knav_acc_channel {int channel; } ;

/* Variables and functions */
 int RANGE_MULTI_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct knav_queue_inst*) ; 
 struct knav_queue_inst* FUNC2 (struct knav_device*,struct knav_range_info*,int) ; 

__attribute__((used)) static void FUNC3(struct knav_range_info *range,
				struct knav_acc_channel *acc)
{
	struct knav_device *kdev = range->kdev;
	struct knav_queue_inst *inst;
	int range_base, queue;

	range_base = kdev->base_id + range->queue_base;

	if (range->flags & RANGE_MULTI_QUEUE) {
		for (queue = 0; queue < range->num_queues; queue++) {
			inst = FUNC2(kdev, range,
								queue);
			if (inst->notify_needed) {
				inst->notify_needed = 0;
				FUNC0(kdev->dev, "acc-irq: notifying %d\n",
					range_base + queue);
				FUNC1(inst);
			}
		}
	} else {
		queue = acc->channel - range->acc_info.start_channel;
		inst = FUNC2(kdev, range, queue);
		FUNC0(kdev->dev, "acc-irq: notifying %d\n",
			range_base + queue);
		FUNC1(inst);
	}
}