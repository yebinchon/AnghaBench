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
typedef  scalar_t__ u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ S626_CLKENAB_ALWAYS ; 
 int /*<<< orphan*/  S626_CLKENAB_INDEX ; 
 int /*<<< orphan*/  S626_CLKMULT_1X ; 
 int /*<<< orphan*/  S626_CLKPOL_POS ; 
 int /*<<< orphan*/  S626_ENCMODE_COUNTER ; 
 int /*<<< orphan*/  S626_INDXSRC_SOFT ; 
 scalar_t__ S626_LATCHSRC_AB_READ ; 
 int /*<<< orphan*/  S626_LOADSRC_INDX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,unsigned int,scalar_t__,int) ; 

__attribute__((used)) static int FUNC12(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	u16 setup =
		/* Preload upon index. */
		FUNC6(S626_LOADSRC_INDX) |
		/* Disable hardware index. */
		FUNC5(S626_INDXSRC_SOFT) |
		/* Operating mode is Counter. */
		FUNC4(S626_ENCMODE_COUNTER) |
		/* Active high clock. */
		FUNC3(S626_CLKPOL_POS) |
		/* Clock multiplier is 1x. */
		FUNC2(S626_CLKMULT_1X) |
		/* Enabled by index */
		FUNC1(S626_CLKENAB_INDEX);
	/* uint16_t disable_int_src = true; */
	/* uint32_t Preloadvalue;              //Counter initial value */
	u16 value_latchsrc = S626_LATCHSRC_AB_READ;
	u16 enab = S626_CLKENAB_ALWAYS;

	/* (data==NULL) ? (Preloadvalue=0) : (Preloadvalue=data[0]); */

	FUNC11(dev, chan, setup, true);
	FUNC7(dev, chan, data[0]);
	FUNC8(dev, chan);
	FUNC10(dev, chan, value_latchsrc);
	FUNC9(dev, chan, (enab != 0));

	return insn->n;
}