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
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int start_arg; int chanlist_len; int scan_end_arg; int convert_arg; unsigned int stop_arg; scalar_t__ chanlist; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX_SAMPLING_PERIOD ; 
 int MIN_SAMPLING_PERIOD ; 
 int TRIG_COUNT ; 
 int TRIG_EXT ; 
 int TRIG_FOLLOW ; 
 int TRIG_INT ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int FUNC0 (int*,unsigned int) ; 
 int FUNC1 (unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int) ; 
 int FUNC5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_cmd *cmd)
{
	int err = 0;
	unsigned int steps;
	unsigned int arg;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC4(&cmd->start_src,
					TRIG_NOW | TRIG_EXT | TRIG_INT);
	err |= FUNC4(&cmd->scan_begin_src, TRIG_FOLLOW);
	err |= FUNC4(&cmd->convert_src, TRIG_TIMER);
	err |= FUNC4(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC4(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC3(cmd->start_src);
	err |= FUNC3(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC0(&cmd->start_arg, 0);

	if (!cmd->chanlist_len)
		err |= -EINVAL;

	/* external start trigger is only valid for 1 or 16 channels */
	if (cmd->start_src == TRIG_EXT &&
	    cmd->chanlist_len != 1 && cmd->chanlist_len != 16)
		err |= -EINVAL;

	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	/*
	 * Validate the conversion timing:
	 * for 1 channel the timing in 30MHz "steps" is:
	 *	steps <= MAX_SAMPLING_PERIOD
	 * for all other chanlist_len it is:
	 *	MIN_SAMPLING_PERIOD <= steps <= MAX_SAMPLING_PERIOD
	 */
	steps = (cmd->convert_arg * 30) / 1000;
	if (cmd->chanlist_len !=  1)
		err |= FUNC2(&steps,
						    MIN_SAMPLING_PERIOD);
	err |= FUNC1(&steps, MAX_SAMPLING_PERIOD);
	arg = (steps * 1000) / 30;
	err |= FUNC0(&cmd->convert_arg, arg);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC2(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC0(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	/* Step 5: check channel list if it exists */
	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC5(dev, s, cmd);
	if (err)
		return 5;

	return 0;
}