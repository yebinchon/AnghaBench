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
struct TYPE_4__ {int pam; int /*<<< orphan*/  pom; int /*<<< orphan*/  pim; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct TYPE_6__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct subchannel {int opm; int lpm; TYPE_2__ schib; TYPE_3__ schid; int /*<<< orphan*/  isc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONSOLE_ISC ; 
 int /*<<< orphan*/  IO_SCH_ISC ; 
 int FUNC1 (struct subchannel*) ; 
 scalar_t__ FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*) ; 

__attribute__((used)) static void FUNC4(struct subchannel *sch)
{
	if (FUNC2(sch->schid))
		sch->opm = 0xff;
	else
		sch->opm = FUNC1(sch);
	sch->lpm = sch->schib.pmcw.pam & sch->opm;
	sch->isc = FUNC2(sch->schid) ? CONSOLE_ISC : IO_SCH_ISC;

	FUNC0(6, "Detected device %04x on subchannel 0.%x.%04X"
		      " - PIM = %02X, PAM = %02X, POM = %02X\n",
		      sch->schib.pmcw.dev, sch->schid.ssid,
		      sch->schid.sch_no, sch->schib.pmcw.pim,
		      sch->schib.pmcw.pam, sch->schib.pmcw.pom);

	FUNC3(sch);
}