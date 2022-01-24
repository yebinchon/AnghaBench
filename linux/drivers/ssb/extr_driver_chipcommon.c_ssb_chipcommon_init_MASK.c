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
struct ssb_chipcommon {int ticks_per_ms; int max_timer_ms; TYPE_3__* dev; int /*<<< orphan*/  status; int /*<<< orphan*/  gpio_lock; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_6__ {TYPE_2__* bus; TYPE_1__ id; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ bustype; } ;

/* Variables and functions */
 scalar_t__ SSB_BUSTYPE_SSB ; 
 int /*<<< orphan*/  SSB_CHIPCO_CHIPSTAT ; 
 int /*<<< orphan*/  SSB_CHIPCO_GPIOPULLDOWN ; 
 int /*<<< orphan*/  SSB_CHIPCO_GPIOPULLUP ; 
 int /*<<< orphan*/  SSB_CLKMODE_FAST ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_chipcommon*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ssb_chipcommon*) ; 
 int FUNC8 (struct ssb_chipcommon*) ; 
 int /*<<< orphan*/  FUNC9 (struct ssb_chipcommon*) ; 

void FUNC10(struct ssb_chipcommon *cc)
{
	if (!cc->dev)
		return; /* We don't have a ChipCommon */

	FUNC5(&cc->gpio_lock);

	if (cc->dev->id.revision >= 11)
		cc->status = FUNC2(cc, SSB_CHIPCO_CHIPSTAT);
	FUNC4(cc->dev->dev, "chipcommon status is 0x%x\n", cc->status);

	if (cc->dev->id.revision >= 20) {
		FUNC3(cc, SSB_CHIPCO_GPIOPULLUP, 0);
		FUNC3(cc, SSB_CHIPCO_GPIOPULLDOWN, 0);
	}

	FUNC9(cc);
	FUNC1(cc);
	FUNC6(cc, SSB_CLKMODE_FAST);
	FUNC0(cc);

	if (cc->dev->bus->bustype == SSB_BUSTYPE_SSB) {
		cc->ticks_per_ms = FUNC8(cc);
		cc->max_timer_ms = FUNC7(cc) / cc->ticks_per_ms;
	}
}