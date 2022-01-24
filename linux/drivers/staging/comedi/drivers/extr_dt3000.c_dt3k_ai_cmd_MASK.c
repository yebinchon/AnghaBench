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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; } ;
struct comedi_cmd {int chanlist_len; int scan_end_arg; scalar_t__ convert_src; scalar_t__ scan_begin_src; int /*<<< orphan*/  flags; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DPR_ADC_BUFFER ; 
 int DPR_AI_FIFO_DEPTH ; 
 int /*<<< orphan*/  DPR_CMD_CONFIG ; 
 int /*<<< orphan*/  DPR_CMD_START ; 
 int DPR_INTR_ADFULL ; 
 int DPR_INTR_ADHWERR ; 
 int DPR_INTR_ADSWERR ; 
 scalar_t__ DPR_INT_MASK ; 
 int DPR_PARAM5_AD_TRIG_INT_RETRIG ; 
 int DPR_PARAM6_AD_DIFF ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ DPR_SUBSYS ; 
 int DPR_SUBSYS_AI ; 
 scalar_t__ TRIG_TIMER ; 
 scalar_t__ debug_n_ints ; 
 unsigned int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int i;
	unsigned int chan, range, aref;
	unsigned int divider;
	unsigned int tscandiv;

	for (i = 0; i < cmd->chanlist_len; i++) {
		chan = FUNC1(cmd->chanlist[i]);
		range = FUNC2(cmd->chanlist[i]);

		FUNC6((range << 6) | chan, dev->mmio + DPR_ADC_BUFFER + i);
	}
	aref = FUNC0(cmd->chanlist[0]);

	FUNC6(cmd->scan_end_arg, dev->mmio + FUNC3(0));

	if (cmd->convert_src == TRIG_TIMER) {
		divider = FUNC4(50, &cmd->convert_arg, cmd->flags);
		FUNC6((divider >> 16), dev->mmio + FUNC3(1));
		FUNC6((divider & 0xffff), dev->mmio + FUNC3(2));
	}

	if (cmd->scan_begin_src == TRIG_TIMER) {
		tscandiv = FUNC4(100, &cmd->scan_begin_arg,
					    cmd->flags);
		FUNC6((tscandiv >> 16), dev->mmio + FUNC3(3));
		FUNC6((tscandiv & 0xffff), dev->mmio + FUNC3(4));
	}

	FUNC6(DPR_PARAM5_AD_TRIG_INT_RETRIG, dev->mmio + FUNC3(5));
	FUNC6((aref == AREF_DIFF) ? DPR_PARAM6_AD_DIFF : 0,
	       dev->mmio + FUNC3(6));

	FUNC6(DPR_AI_FIFO_DEPTH / 2, dev->mmio + FUNC3(7));

	FUNC6(DPR_SUBSYS_AI, dev->mmio + DPR_SUBSYS);
	FUNC5(dev, DPR_CMD_CONFIG);

	FUNC6(DPR_INTR_ADFULL | DPR_INTR_ADSWERR | DPR_INTR_ADHWERR,
	       dev->mmio + DPR_INT_MASK);

	debug_n_ints = 0;

	FUNC6(DPR_SUBSYS_AI, dev->mmio + DPR_SUBSYS);
	FUNC5(dev, DPR_CMD_START);

	return 0;
}