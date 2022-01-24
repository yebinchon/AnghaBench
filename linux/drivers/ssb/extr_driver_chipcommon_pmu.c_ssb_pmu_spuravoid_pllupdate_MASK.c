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
typedef  int /*<<< orphan*/  u32 ;
struct ssb_chipcommon {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* bus; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_CHIPCO_PMU_CTL ; 
 int /*<<< orphan*/  SSB_CHIPCO_PMU_CTL_PLL_UPD ; 
 int /*<<< orphan*/  SSB_PMU1_PLLCTL0 ; 
 int /*<<< orphan*/  SSB_PMU1_PLLCTL1 ; 
 int /*<<< orphan*/  SSB_PMU1_PLLCTL2 ; 
 int /*<<< orphan*/  SSB_PMU1_PLLCTL3 ; 
 int /*<<< orphan*/  SSB_PMU1_PLLCTL4 ; 
 int /*<<< orphan*/  SSB_PMU1_PLLCTL5 ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ssb_chipcommon *cc, int spuravoid)
{
	u32 pmu_ctl = 0;

	switch (cc->dev->bus->chip_id) {
	case 0x4322:
		FUNC2(cc, SSB_PMU1_PLLCTL0, 0x11100070);
		FUNC2(cc, SSB_PMU1_PLLCTL1, 0x1014140a);
		FUNC2(cc, SSB_PMU1_PLLCTL5, 0x88888854);
		if (spuravoid == 1)
			FUNC2(cc, SSB_PMU1_PLLCTL2, 0x05201828);
		else
			FUNC2(cc, SSB_PMU1_PLLCTL2, 0x05001828);
		pmu_ctl = SSB_CHIPCO_PMU_CTL_PLL_UPD;
		break;
	case 43222:
		if (spuravoid == 1) {
			FUNC2(cc, SSB_PMU1_PLLCTL0, 0x11500008);
			FUNC2(cc, SSB_PMU1_PLLCTL1, 0x0C000C06);
			FUNC2(cc, SSB_PMU1_PLLCTL2, 0x0F600a08);
			FUNC2(cc, SSB_PMU1_PLLCTL3, 0x00000000);
			FUNC2(cc, SSB_PMU1_PLLCTL4, 0x2001E920);
			FUNC2(cc, SSB_PMU1_PLLCTL5, 0x88888815);
		} else {
			FUNC2(cc, SSB_PMU1_PLLCTL0, 0x11100008);
			FUNC2(cc, SSB_PMU1_PLLCTL1, 0x0c000c06);
			FUNC2(cc, SSB_PMU1_PLLCTL2, 0x03000a08);
			FUNC2(cc, SSB_PMU1_PLLCTL3, 0x00000000);
			FUNC2(cc, SSB_PMU1_PLLCTL4, 0x200005c0);
			FUNC2(cc, SSB_PMU1_PLLCTL5, 0x88888855);
		}
		pmu_ctl = SSB_CHIPCO_PMU_CTL_PLL_UPD;
		break;
	default:
		FUNC1(cc->dev->dev,
			"Unknown spuravoidance settings for chip 0x%04X, not changing PLL\n",
			cc->dev->bus->chip_id);
		return;
	}

	FUNC0(cc, SSB_CHIPCO_PMU_CTL, pmu_ctl);
}