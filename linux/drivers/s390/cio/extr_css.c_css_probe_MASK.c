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
struct subchannel {TYPE_1__* driver; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int (* probe ) (struct subchannel*) ;} ;

/* Variables and functions */
 int FUNC0 (struct subchannel*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC2(dev);
	sch->driver = FUNC1(dev->driver);
	ret = sch->driver->probe ? sch->driver->probe(sch) : 0;
	if (ret)
		sch->driver = NULL;
	return ret;
}