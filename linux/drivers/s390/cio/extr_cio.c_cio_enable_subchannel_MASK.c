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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int ena; scalar_t__ csense; int /*<<< orphan*/  intparm; int /*<<< orphan*/  isc; } ;
struct subchannel {TYPE_1__ config; int /*<<< orphan*/  isc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int FUNC2 (struct subchannel*) ; 
 scalar_t__ FUNC3 (struct subchannel*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct subchannel*) ; 

int FUNC6(struct subchannel *sch, u32 intparm)
{
	int ret;

	FUNC1(2, "ensch");
	FUNC1(2, FUNC4(&sch->dev));

	if (FUNC5(sch))
		return -EINVAL;
	if (FUNC3(sch))
		return -ENODEV;

	sch->config.ena = 1;
	sch->config.isc = sch->isc;
	sch->config.intparm = intparm;

	ret = FUNC2(sch);
	if (ret == -EIO) {
		/*
		 * Got a program check in msch. Try without
		 * the concurrent sense bit the next time.
		 */
		sch->config.csense = 0;
		ret = FUNC2(sch);
	}
	FUNC0(2, &ret, sizeof(ret));
	return ret;
}