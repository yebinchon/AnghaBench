#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int rev; } ;
struct ssb_chipcommon {int capabilities; TYPE_2__ pmu; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SSB_CHIPCO_CAP_PMU ; 
 int /*<<< orphan*/  SSB_CHIPCO_PMU_CAP ; 
 int SSB_CHIPCO_PMU_CAP_REVISION ; 
 int /*<<< orphan*/  SSB_CHIPCO_PMU_CTL ; 
 int /*<<< orphan*/  SSB_CHIPCO_PMU_CTL_NOILPONW ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_chipcommon*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_chipcommon*) ; 

void FUNC6(struct ssb_chipcommon *cc)
{
	u32 pmucap;

	if (!(cc->capabilities & SSB_CHIPCO_CAP_PMU))
		return;

	pmucap = FUNC1(cc, SSB_CHIPCO_PMU_CAP);
	cc->pmu.rev = (pmucap & SSB_CHIPCO_PMU_CAP_REVISION);

	FUNC3(cc->dev->dev, "Found rev %u PMU (capabilities 0x%08X)\n",
		cc->pmu.rev, pmucap);

	if (cc->pmu.rev == 1)
		FUNC0(cc, SSB_CHIPCO_PMU_CTL,
			      ~SSB_CHIPCO_PMU_CTL_NOILPONW);
	else
		FUNC2(cc, SSB_CHIPCO_PMU_CTL,
			     SSB_CHIPCO_PMU_CTL_NOILPONW);
	FUNC4(cc);
	FUNC5(cc);
}