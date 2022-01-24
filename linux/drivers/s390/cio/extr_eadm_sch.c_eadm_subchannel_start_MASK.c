#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int key; void* intparm; void* aob; } ;
union orb {TYPE_1__ eadm; } ;
typedef  void* u32 ;
struct TYPE_7__ {int /*<<< orphan*/  actl; } ;
struct TYPE_8__ {TYPE_2__ eadm; } ;
struct TYPE_9__ {TYPE_3__ scsw; } ;
struct subchannel {TYPE_4__ schib; int /*<<< orphan*/  schid; } ;
struct aob {int dummy; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_10__ {union orb orb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 int EBUSY ; 
 int ENODEV ; 
 int PAGE_DEFAULT_KEY ; 
 int /*<<< orphan*/  SCSW_ACTL_START_PEND ; 
 scalar_t__ FUNC2 (struct aob*) ; 
 TYPE_5__* FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (union orb*) ; 
 int FUNC5 (int /*<<< orphan*/ ,union orb*) ; 

__attribute__((used)) static int FUNC6(struct subchannel *sch, struct aob *aob)
{
	union orb *orb = &FUNC3(sch)->orb;
	int cc;

	FUNC4(orb);
	orb->eadm.aob = (u32)FUNC2(aob);
	orb->eadm.intparm = (u32)(addr_t)sch;
	orb->eadm.key = PAGE_DEFAULT_KEY >> 4;

	FUNC0(6, "start");
	FUNC1(6, &sch->schid, sizeof(sch->schid));

	cc = FUNC5(sch->schid, orb);
	switch (cc) {
	case 0:
		sch->schib.scsw.eadm.actl |= SCSW_ACTL_START_PEND;
		break;
	case 1:		/* status pending */
	case 2:		/* busy */
		return -EBUSY;
	case 3:		/* not operational */
		return -ENODEV;
	}
	return 0;
}