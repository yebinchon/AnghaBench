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
struct ssb_chipcommon {int capabilities; TYPE_2__* dev; } ;
struct ssb_bus {int chip_id; int chip_rev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; struct ssb_bus* bus; } ;

/* Variables and functions */
 int SSB_CHIPCO_CAP_PCTL ; 
 int /*<<< orphan*/  SSB_CHIPCO_CHIPCTL ; 
 int /*<<< orphan*/  SSB_CHIPCO_FREFSELDELAY ; 
 int /*<<< orphan*/  SSB_CHIPCO_PLLONDELAY ; 
 int /*<<< orphan*/  SSB_CHIPCO_SYSCLKCTL ; 
 int FUNC0 (struct ssb_chipcommon*,int) ; 
 int FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ssb_chipcommon *cc)
{
	struct ssb_bus *bus = cc->dev->bus;

	if (bus->chip_id == 0x4321) {
		if (bus->chip_rev == 0)
			FUNC2(cc, SSB_CHIPCO_CHIPCTL, 0x3A4);
		else if (bus->chip_rev == 1)
			FUNC2(cc, SSB_CHIPCO_CHIPCTL, 0xA4);
	}

	if (!(cc->capabilities & SSB_CHIPCO_CAP_PCTL))
		return;

	if (cc->dev->id.revision >= 10) {
		/* Set Idle Power clock rate to 1Mhz */
		FUNC2(cc, SSB_CHIPCO_SYSCLKCTL,
			       (FUNC1(cc, SSB_CHIPCO_SYSCLKCTL) &
				0x0000FFFF) | 0x00040000);
	} else {
		int maxfreq;

		maxfreq = FUNC0(cc, 1);
		FUNC2(cc, SSB_CHIPCO_PLLONDELAY,
			       (maxfreq * 150 + 999999) / 1000000);
		FUNC2(cc, SSB_CHIPCO_FREFSELDELAY,
			       (maxfreq * 15 + 999999) / 1000000);
	}
}