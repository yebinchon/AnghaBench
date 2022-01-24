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
struct pcidas64_board {scalar_t__ layout; int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int start_arg; int convert_arg; int scan_begin_arg; int chanlist_len; int scan_end_arg; int stop_arg; scalar_t__ chanlist; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LAYOUT_4020 ; 
#define  TRIG_COUNT 131 
#define  TRIG_EXT 130 
 unsigned int TRIG_FOLLOW ; 
#define  TRIG_NONE 129 
#define  TRIG_NOW 128 
 unsigned int TRIG_OTHER ; 
 unsigned int TRIG_TIMER ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC2 (int*,int) ; 
 int FUNC3 (int*,int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s,
		      struct comedi_cmd *cmd)
{
	const struct pcidas64_board *board = dev->board_ptr;
	int err = 0;
	unsigned int tmp_arg, tmp_arg2;
	unsigned int triggers;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC5(&cmd->start_src, TRIG_NOW | TRIG_EXT);

	triggers = TRIG_TIMER;
	if (board->layout == LAYOUT_4020)
		triggers |= TRIG_OTHER;
	else
		triggers |= TRIG_FOLLOW;
	err |= FUNC5(&cmd->scan_begin_src, triggers);

	triggers = TRIG_TIMER;
	if (board->layout == LAYOUT_4020)
		triggers |= TRIG_NOW;
	else
		triggers |= TRIG_EXT;
	err |= FUNC5(&cmd->convert_src, triggers);
	err |= FUNC5(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC5(&cmd->stop_src,
					TRIG_COUNT | TRIG_EXT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC4(cmd->start_src);
	err |= FUNC4(cmd->scan_begin_src);
	err |= FUNC4(cmd->convert_src);
	err |= FUNC4(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (cmd->convert_src == TRIG_EXT && cmd->scan_begin_src == TRIG_TIMER)
		err |= -EINVAL;

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	switch (cmd->start_src) {
	case TRIG_NOW:
		err |= FUNC2(&cmd->start_arg, 0);
		break;
	case TRIG_EXT:
		/*
		 * start_arg is the CR_CHAN | CR_INVERT of the
		 * external trigger.
		 */
		break;
	}

	if (cmd->convert_src == TRIG_TIMER) {
		if (board->layout == LAYOUT_4020) {
			err |= FUNC2(&cmd->convert_arg,
							   0);
		} else {
			err |= FUNC3(&cmd->convert_arg,
							    board->ai_speed);
			/*
			 * if scans are timed faster than conversion rate
			 * allows
			 */
			if (cmd->scan_begin_src == TRIG_TIMER) {
				err |= FUNC3(
						&cmd->scan_begin_arg,
						cmd->convert_arg *
						cmd->chanlist_len);
			}
		}
	}

	err |= FUNC3(&cmd->chanlist_len, 1);
	err |= FUNC2(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	switch (cmd->stop_src) {
	case TRIG_EXT:
		break;
	case TRIG_COUNT:
		err |= FUNC3(&cmd->stop_arg, 1);
		break;
	case TRIG_NONE:
		err |= FUNC2(&cmd->stop_arg, 0);
		break;
	default:
		break;
	}

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	if (cmd->convert_src == TRIG_TIMER) {
		tmp_arg = cmd->convert_arg;
		tmp_arg2 = cmd->scan_begin_arg;
		FUNC1(dev, cmd);
		if (tmp_arg != cmd->convert_arg)
			err++;
		if (tmp_arg2 != cmd->scan_begin_arg)
			err++;
	}

	if (err)
		return 4;

	/* Step 5: check channel list if it exists */
	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC0(dev, s, cmd);

	if (err)
		return 5;

	return 0;
}