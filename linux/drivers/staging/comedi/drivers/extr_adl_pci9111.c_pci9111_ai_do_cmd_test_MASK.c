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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  pacer; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int convert_arg; unsigned int scan_begin_arg; unsigned int scan_end_arg; unsigned int chanlist_len; unsigned int stop_arg; scalar_t__ chanlist; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCI9111_AI_ACQUISITION_PERIOD_MIN_NS ; 
 int TRIG_COUNT ; 
 int TRIG_EXT ; 
 int TRIG_FOLLOW ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int*,unsigned int) ; 
 int FUNC2 (unsigned int*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int) ; 
 int FUNC5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_cmd *cmd)
{
	int err = 0;
	unsigned int arg;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC4(&cmd->start_src, TRIG_NOW);
	err |= FUNC4(&cmd->scan_begin_src,
					TRIG_TIMER | TRIG_FOLLOW | TRIG_EXT);
	err |= FUNC4(&cmd->convert_src,
					TRIG_TIMER | TRIG_EXT);
	err |= FUNC4(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC4(&cmd->stop_src,
					TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC3(cmd->scan_begin_src);
	err |= FUNC3(cmd->convert_src);
	err |= FUNC3(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (cmd->scan_begin_src != TRIG_FOLLOW) {
		if (cmd->scan_begin_src != cmd->convert_src)
			err |= -EINVAL;
	}

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC1(&cmd->start_arg, 0);

	if (cmd->convert_src == TRIG_TIMER) {
		err |= FUNC2(&cmd->convert_arg,
					PCI9111_AI_ACQUISITION_PERIOD_MIN_NS);
	} else {	/* TRIG_EXT */
		err |= FUNC1(&cmd->convert_arg, 0);
	}

	if (cmd->scan_begin_src == TRIG_TIMER) {
		err |= FUNC2(&cmd->scan_begin_arg,
					PCI9111_AI_ACQUISITION_PERIOD_MIN_NS);
	} else {	/* TRIG_FOLLOW || TRIG_EXT */
		err |= FUNC1(&cmd->scan_begin_arg, 0);
	}

	err |= FUNC1(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC2(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC1(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	if (cmd->convert_src == TRIG_TIMER) {
		arg = cmd->convert_arg;
		FUNC0(dev->pacer, &arg, cmd->flags);
		err |= FUNC1(&cmd->convert_arg, arg);
	}

	/*
	 * There's only one timer on this card, so the scan_begin timer
	 * must be a multiple of chanlist_len*convert_arg
	 */
	if (cmd->scan_begin_src == TRIG_TIMER) {
		arg = cmd->chanlist_len * cmd->convert_arg;

		if (arg < cmd->scan_begin_arg)
			arg *= (cmd->scan_begin_arg / arg);

		err |= FUNC1(&cmd->scan_begin_arg, arg);
	}

	if (err)
		return 4;

	/* Step 5: check channel list if it exists */
	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC5(dev, s, cmd);

	if (err)
		return 5;

	return 0;
}