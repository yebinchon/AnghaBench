#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  actl; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {TYPE_2__ scsw; } ;
struct subchannel {TYPE_3__ schib; int /*<<< orphan*/  schid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ccode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  SCSW_ACTL_CLEAR_PEND ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct subchannel *sch)
{
	int ccode;

	if (!sch)
		return -ENODEV;

	FUNC1(2, "clearIO");
	FUNC1(2, FUNC3(&sch->dev));

	/*
	 * Issue "Clear subchannel" and process condition code
	 */
	ccode = FUNC2 (sch->schid);

	FUNC0(2, &ccode, sizeof(ccode));

	switch (ccode) {
	case 0:
		sch->schib.scsw.cmd.actl |= SCSW_ACTL_CLEAR_PEND;
		return 0;
	default:		/* device not operational */
		return -ENODEV;
	}
}