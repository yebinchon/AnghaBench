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
struct TYPE_2__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct subchannel {int todo; int /*<<< orphan*/  dev; int /*<<< orphan*/  todo_work; TYPE_1__ schid; } ;
typedef  enum sch_todo { ____Placeholder_sch_todo } sch_todo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cio_work_q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct subchannel *sch, enum sch_todo todo)
{
	FUNC0(4, "sch_todo: sched sch=0.%x.%04x todo=%d\n",
		      sch->schid.ssid, sch->schid.sch_no, todo);
	if (sch->todo >= todo)
		return;
	/* Get workqueue ref. */
	if (!FUNC1(&sch->dev))
		return;
	sch->todo = todo;
	if (!FUNC3(cio_work_q, &sch->todo_work)) {
		/* Already queued, release workqueue ref. */
		FUNC2(&sch->dev);
	}
}