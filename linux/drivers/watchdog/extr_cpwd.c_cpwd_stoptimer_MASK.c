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
struct cpwd {TYPE_1__* devs; scalar_t__ broken; } ;
struct TYPE_2__ {int /*<<< orphan*/  runstatus; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  WD_INTR_OFF ; 
 scalar_t__ WD_STATUS ; 
 int /*<<< orphan*/  WD_STAT_BSTOP ; 
 int WD_S_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cpwd*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cpwd *p, int index)
{
	if (FUNC1(p->devs[index].regs + WD_STATUS) & WD_S_RUNNING) {
		FUNC2(p, index, WD_INTR_OFF);

		if (p->broken) {
			p->devs[index].runstatus |= WD_STAT_BSTOP;
			FUNC0(NULL);
		}
	}
}