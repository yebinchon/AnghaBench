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
struct TYPE_2__ {int /*<<< orphan*/  pmcw; } ;
struct subchannel {int /*<<< orphan*/  ssd_info; TYPE_1__ schib; int /*<<< orphan*/  schid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct subchannel *sch)
{
	int ret;

	ret = FUNC0(sch->schid, &sch->ssd_info);
	if (ret)
		FUNC1(&sch->ssd_info, &sch->schib.pmcw);

	FUNC2(&sch->ssd_info);
}