#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ssb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_IDLOW ; 
 int SSB_IDLOW_INITIATOR ; 
 int /*<<< orphan*/  SSB_IMSTATE ; 
 int SSB_IMSTATE_BUSY ; 
 int SSB_IMSTATE_REJECT ; 
 int /*<<< orphan*/  SSB_TMSHIGH ; 
 int SSB_TMSHIGH_BUSY ; 
 int /*<<< orphan*/  SSB_TMSLOW ; 
 int SSB_TMSLOW_CLOCK ; 
 int SSB_TMSLOW_FGC ; 
 int SSB_TMSLOW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_device*) ; 
 int FUNC1 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_device*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ssb_device *dev, u32 core_specific_flags)
{
	u32 reject, val;

	if (FUNC1(dev, SSB_TMSLOW) & SSB_TMSLOW_RESET)
		return;

	reject = FUNC2(dev);

	if (FUNC1(dev, SSB_TMSLOW) & SSB_TMSLOW_CLOCK) {
		FUNC4(dev, SSB_TMSLOW, reject | SSB_TMSLOW_CLOCK);
		FUNC3(dev, SSB_TMSLOW, reject, 1000, 1);
		FUNC3(dev, SSB_TMSHIGH, SSB_TMSHIGH_BUSY, 1000, 0);

		if (FUNC1(dev, SSB_IDLOW) & SSB_IDLOW_INITIATOR) {
			val = FUNC1(dev, SSB_IMSTATE);
			val |= SSB_IMSTATE_REJECT;
			FUNC4(dev, SSB_IMSTATE, val);
			FUNC3(dev, SSB_IMSTATE, SSB_IMSTATE_BUSY, 1000,
				      0);
		}

		FUNC4(dev, SSB_TMSLOW,
			SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK |
			reject | SSB_TMSLOW_RESET |
			core_specific_flags);
		FUNC0(dev);

		if (FUNC1(dev, SSB_IDLOW) & SSB_IDLOW_INITIATOR) {
			val = FUNC1(dev, SSB_IMSTATE);
			val &= ~SSB_IMSTATE_REJECT;
			FUNC4(dev, SSB_IMSTATE, val);
		}
	}

	FUNC4(dev, SSB_TMSLOW,
		    reject | SSB_TMSLOW_RESET |
		    core_specific_flags);
	FUNC0(dev);
}