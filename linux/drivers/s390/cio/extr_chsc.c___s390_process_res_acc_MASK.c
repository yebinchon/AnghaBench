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
struct subchannel {int /*<<< orphan*/  lock; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chp_event ) (struct subchannel*,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct subchannel *sch, void *data)
{
	FUNC0(sch->lock);
	if (sch->driver && sch->driver->chp_event)
		sch->driver->chp_event(sch, data, CHP_ONLINE);
	FUNC1(sch->lock);

	return 0;
}