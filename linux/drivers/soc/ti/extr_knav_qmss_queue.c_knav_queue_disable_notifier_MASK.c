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
struct knav_queue {int /*<<< orphan*/  notifier_enabled; struct knav_queue_inst* inst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct knav_queue_inst*,int) ; 

__attribute__((used)) static int FUNC2(struct knav_queue *qh)
{
	struct knav_queue_inst *inst = qh->inst;
	bool last;

	last = (FUNC0(&qh->notifier_enabled) == 0);
	if (!last)
		return 0; /* nothing to do */

	last = (FUNC0(&inst->num_notifiers) == 0);
	if (last)
		FUNC1(inst, false);

	return 0;
}