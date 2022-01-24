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
struct TYPE_3__ {int rev; } ;
struct ssb_chipcommon {TYPE_2__* dev; TYPE_1__ pmu; } ;
struct ssb_bus {scalar_t__ bustype; int chip_id; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  dev; struct ssb_bus* bus; } ;

/* Variables and functions */
 scalar_t__ SSB_BUSTYPE_SSB ; 
 int /*<<< orphan*/  SSB_CHIPCO_PLLCTL_ADDR ; 
 int /*<<< orphan*/  SSB_CHIPCO_PLLCTL_DATA ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_chipcommon*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_chipcommon*,int) ; 

__attribute__((used)) static void FUNC6(struct ssb_chipcommon *cc)
{
	struct ssb_bus *bus = cc->dev->bus;
	u32 crystalfreq = 0; /* in kHz. 0 = keep default freq. */

	if (bus->bustype == SSB_BUSTYPE_SSB) {
#ifdef CONFIG_BCM47XX
		char buf[20];
		if (bcm47xx_nvram_getenv("xtalfreq", buf, sizeof(buf)) >= 0)
			crystalfreq = simple_strtoul(buf, NULL, 0);
#endif
	}

	switch (bus->chip_id) {
	case 0x4312:
	case 0x4325:
		FUNC5(cc, crystalfreq);
		break;
	case 0x4328:
		FUNC4(cc, crystalfreq);
		break;
	case 0x5354:
		if (crystalfreq == 0)
			crystalfreq = 25000;
		FUNC4(cc, crystalfreq);
		break;
	case 0x4322:
		if (cc->pmu.rev == 2) {
			FUNC1(cc, SSB_CHIPCO_PLLCTL_ADDR, 0x0000000A);
			FUNC1(cc, SSB_CHIPCO_PLLCTL_DATA, 0x380005C0);
		}
		break;
	case 43222:
		break;
	default:
		FUNC2(cc->dev->dev, "ERROR: PLL init unknown for device %04X\n",
			bus->chip_id);
	}
}