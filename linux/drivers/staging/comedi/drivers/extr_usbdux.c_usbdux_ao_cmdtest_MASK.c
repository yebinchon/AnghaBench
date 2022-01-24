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
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  chanlist_len; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  start_arg; } ;

/* Variables and functions */
 unsigned int TRIG_COUNT ; 
 unsigned int TRIG_FOLLOW ; 
 unsigned int TRIG_INT ; 
 unsigned int TRIG_NONE ; 
 unsigned int TRIG_NOW ; 
 unsigned int TRIG_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			     struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
	int err = 0;
	unsigned int flags;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC3(&cmd->start_src, TRIG_NOW | TRIG_INT);

	if (0) {		/* (devpriv->high_speed) */
		/* the sampling rate is set by the coversion rate */
		flags = TRIG_FOLLOW;
	} else {
		/* start a new scan (output at once) with a timer */
		flags = TRIG_TIMER;
	}
	err |= FUNC3(&cmd->scan_begin_src, flags);

	if (0) {		/* (devpriv->high_speed) */
		/*
		 * in usb-2.0 only one conversion it transmitted
		 * but with 8kHz/n
		 */
		flags = TRIG_TIMER;
	} else {
		/*
		 * all conversion events happen simultaneously with
		 * a rate of 1kHz/n
		 */
		flags = TRIG_NOW;
	}
	err |= FUNC3(&cmd->convert_src, flags);

	err |= FUNC3(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC3(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC2(cmd->start_src);
	err |= FUNC2(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC0(&cmd->start_arg, 0);

	if (cmd->scan_begin_src == TRIG_FOLLOW)	/* internal trigger */
		err |= FUNC0(&cmd->scan_begin_arg, 0);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		err |= FUNC1(&cmd->scan_begin_arg,
						    1000000);
	}

	/* not used now, is for later use */
	if (cmd->convert_src == TRIG_TIMER)
		err |= FUNC1(&cmd->convert_arg, 125000);

	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC1(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC0(&cmd->stop_arg, 0);

	if (err)
		return 3;

	return 0;
}