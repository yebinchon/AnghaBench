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
struct TYPE_2__ {scalar_t__ intparm; } ;
struct subchannel {struct subchannel* lock; struct subchannel* driver_override; TYPE_1__ config; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*) ; 
 struct subchannel* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct subchannel *sch = FUNC2(dev);

	sch->config.intparm = 0;
	FUNC0(sch);
	FUNC1(sch->driver_override);
	FUNC1(sch->lock);
	FUNC1(sch);
}