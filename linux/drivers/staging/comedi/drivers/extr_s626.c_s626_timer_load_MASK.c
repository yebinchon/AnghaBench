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
 int /*<<< orphan*/  S626_CLKENAB_INDEX ; 
 int /*<<< orphan*/  S626_CLKMULT_1X ; 
 int /*<<< orphan*/  S626_CNTDIR_DOWN ; 
 int /*<<< orphan*/  S626_ENCMODE_TIMER ; 
 int /*<<< orphan*/  S626_INDXSRC_SOFT ; 
 int /*<<< orphan*/  S626_INTSRC_OVER ; 
 int S626_LATCHSRC_A_INDXA ; 
 int /*<<< orphan*/  S626_LOADSRC_INDX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC12(struct comedi_device *dev,
			    unsigned int chan, int tick)
{
	u16 setup =
		/* Preload upon index. */
		FUNC5(S626_LOADSRC_INDX) |
		/* Disable hardware index. */
		FUNC4(S626_INDXSRC_SOFT) |
		/* Operating mode is Timer. */
		FUNC3(S626_ENCMODE_TIMER) |
		/* Count direction is Down. */
		FUNC2(S626_CNTDIR_DOWN) |
		/* Clock multiplier is 1x. */
		FUNC1(S626_CLKMULT_1X) |
		/* Enabled by index */
		FUNC0(S626_CLKENAB_INDEX);
	u16 value_latchsrc = S626_LATCHSRC_A_INDXA;
	/* uint16_t enab = S626_CLKENAB_ALWAYS; */

	FUNC11(dev, chan, setup, false);

	/* Set the preload register */
	FUNC6(dev, chan, tick);

	/*
	 * Software index pulse forces the preload register to load
	 * into the counter
	 */
	FUNC10(dev, chan, 0);
	FUNC7(dev, chan);

	/* set reload on counter overflow */
	FUNC10(dev, chan, 1);

	/* set interrupt on overflow */
	FUNC8(dev, chan, S626_INTSRC_OVER);

	FUNC9(dev, chan, value_latchsrc);
	/* s626_set_enable(dev, chan, (uint16_t)(enab != 0)); */
}