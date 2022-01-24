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
typedef  int u16 ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S626_CLKENAB_ALWAYS ; 
 int /*<<< orphan*/  S626_CLKENAB_INDEX ; 
 int /*<<< orphan*/  S626_CLKMULT_1X ; 
 int /*<<< orphan*/  S626_CLKPOL_POS ; 
 int /*<<< orphan*/  S626_ENCMODE_COUNTER ; 
 int S626_ENCODER_CHANNELS ; 
 int /*<<< orphan*/  S626_INDXSRC_SOFT ; 
 int /*<<< orphan*/  S626_LOADSRC_INDX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,int,int,int) ; 

__attribute__((used)) static void FUNC10(struct comedi_device *dev)
{
	int chan;
	u16 setup =
		/* Preload upon index. */
		FUNC5(S626_LOADSRC_INDX) |
		/* Disable hardware index. */
		FUNC4(S626_INDXSRC_SOFT) |
		/* Operating mode is counter. */
		FUNC3(S626_ENCMODE_COUNTER) |
		/* Active high clock. */
		FUNC2(S626_CLKPOL_POS) |
		/* Clock multiplier is 1x. */
		FUNC1(S626_CLKMULT_1X) |
		/* Enabled by index */
		FUNC0(S626_CLKENAB_INDEX);

	/*
	 * Disable all counter interrupts and clear any captured counter events.
	 */
	for (chan = 0; chan < S626_ENCODER_CHANNELS; chan++) {
		FUNC9(dev, chan, setup, true);
		FUNC8(dev, chan, 0);
		FUNC6(dev, chan);
		FUNC7(dev, chan, S626_CLKENAB_ALWAYS);
	}
}