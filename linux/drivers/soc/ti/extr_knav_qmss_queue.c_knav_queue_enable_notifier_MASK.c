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
struct knav_queue_inst {int /*<<< orphan*/  num_notifiers; } ;
struct knav_queue {int /*<<< orphan*/  notifier_enabled; int /*<<< orphan*/  notifier_fn; struct knav_queue_inst* inst; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct knav_queue_inst*,int) ; 

__attribute__((used)) static int FUNC3(struct knav_queue *qh)
{
	struct knav_queue_inst *inst = qh->inst;
	bool first;

	if (FUNC0(!qh->notifier_fn))
		return -EINVAL;

	/* Adjust the per handle notifier count */
	first = (FUNC1(&qh->notifier_enabled) == 1);
	if (!first)
		return 0; /* nothing to do */

	/* Now adjust the per instance notifier count */
	first = (FUNC1(&inst->num_notifiers) == 1);
	if (first)
		FUNC2(inst, true);

	return 0;
}