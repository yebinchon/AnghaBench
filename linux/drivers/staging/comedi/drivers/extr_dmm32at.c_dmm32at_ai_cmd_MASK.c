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
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMM32AT_AI_READBACK_REG ; 
 scalar_t__ DMM32AT_AI_START_CONV_REG ; 
 int DMM32AT_CTRL_INTRST ; 
 scalar_t__ DMM32AT_CTRL_REG ; 
 int DMM32AT_INTCLK_ADINT ; 
 scalar_t__ DMM32AT_INTCLK_REG ; 
 scalar_t__ TRIG_NONE ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmm32at_ai_status ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int ret;

	FUNC1(dev, s, cmd->chanlist[0], cmd->chanlist_len);

	/* reset the interrupt just in case */
	FUNC3(DMM32AT_CTRL_INTRST, dev->iobase + DMM32AT_CTRL_REG);

	/*
	 * wait for circuit to settle
	 * we don't have the 'insn' here but it's not needed
	 */
	ret = FUNC0(dev, s, NULL, dmm32at_ai_status,
			     DMM32AT_AI_READBACK_REG);
	if (ret)
		return ret;

	if (cmd->stop_src == TRIG_NONE || cmd->stop_arg > 1) {
		/* start the clock and enable the interrupts */
		FUNC2(dev, cmd->scan_begin_arg);
	} else {
		/* start the interrupts and initiate a single scan */
		FUNC3(DMM32AT_INTCLK_ADINT, dev->iobase + DMM32AT_INTCLK_REG);
		FUNC3(0xff, dev->iobase + DMM32AT_AI_START_CONV_REG);
	}

	return 0;
}