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
struct knav_range_info {TYPE_1__* ops; } ;
struct knav_queue_inst {TYPE_2__* kdev; struct knav_range_info* range; } ;
struct knav_queue {int /*<<< orphan*/  stats; int /*<<< orphan*/  list; int /*<<< orphan*/  notifier_enabled; struct knav_queue_inst* inst; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close_queue ) (struct knav_range_info*,struct knav_queue_inst*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct knav_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  knav_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (struct knav_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct knav_queue_inst*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct knav_range_info*,struct knav_queue_inst*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void *qhandle)
{
	struct knav_queue *qh = qhandle;
	struct knav_queue_inst *inst = qh->inst;

	while (FUNC0(&qh->notifier_enabled) > 0)
		FUNC3(qh);

	FUNC6(&knav_dev_lock);
	FUNC5(&qh->list);
	FUNC7(&knav_dev_lock);
	FUNC9();
	if (!FUNC4(inst)) {
		struct knav_range_info *range = inst->range;

		if (range->ops && range->ops->close_queue)
			range->ops->close_queue(range, inst);
	}
	FUNC2(qh->stats);
	FUNC1(inst->kdev->dev, qh);
}