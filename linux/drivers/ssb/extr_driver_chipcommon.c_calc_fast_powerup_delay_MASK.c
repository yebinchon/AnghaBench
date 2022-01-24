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
typedef  int u32 ;
struct ssb_chipcommon {int capabilities; unsigned int fast_pwrup_delay; TYPE_1__* dev; } ;
struct ssb_bus {scalar_t__ bustype; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 scalar_t__ SSB_BUSTYPE_PCI ; 
 int SSB_CHIPCO_CAP_PCTL ; 
 int SSB_CHIPCO_CAP_PMU ; 
 int /*<<< orphan*/  SSB_CHIPCO_PLLONDELAY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ssb_chipcommon*) ; 

__attribute__((used)) static void FUNC4(struct ssb_chipcommon *cc)
{
	struct ssb_bus *bus = cc->dev->bus;
	int minfreq;
	unsigned int tmp;
	u32 pll_on_delay;

	if (bus->bustype != SSB_BUSTYPE_PCI)
		return;

	if (cc->capabilities & SSB_CHIPCO_CAP_PMU) {
		cc->fast_pwrup_delay = FUNC3(cc);
		return;
	}

	if (!(cc->capabilities & SSB_CHIPCO_CAP_PCTL))
		return;

	minfreq = FUNC1(cc, 0);
	pll_on_delay = FUNC2(cc, SSB_CHIPCO_PLLONDELAY);
	tmp = (((pll_on_delay + 2) * 1000000) + (minfreq - 1)) / minfreq;
	FUNC0(tmp & ~0xFFFF);

	cc->fast_pwrup_delay = tmp;
}