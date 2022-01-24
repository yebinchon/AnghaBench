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
struct das1800_board {int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct das1800_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int start_arg; scalar_t__ stop_arg; scalar_t__ convert_arg; scalar_t__ chanlist_len; int scan_end_arg; scalar_t__ chanlist; } ;

/* Variables and functions */
 int EINVAL ; 
#define  TRIG_COUNT 129 
 int TRIG_EXT ; 
 int TRIG_FOLLOW ; 
#define  TRIG_NONE 128 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int FUNC0 (int*,scalar_t__) ; 
 int FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int*,int) ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 
 int FUNC5 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC6 (struct comedi_device*,struct comedi_cmd*) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_cmd *cmd)
{
	const struct das1800_board *board = dev->board_ptr;
	int err = 0;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC3(&cmd->start_src, TRIG_NOW | TRIG_EXT);
	err |= FUNC3(&cmd->scan_begin_src,
					TRIG_FOLLOW | TRIG_TIMER | TRIG_EXT);
	err |= FUNC3(&cmd->convert_src,
					TRIG_TIMER | TRIG_EXT);
	err |= FUNC3(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC3(&cmd->stop_src,
					TRIG_COUNT | TRIG_EXT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC2(cmd->start_src);
	err |= FUNC2(cmd->scan_begin_src);
	err |= FUNC2(cmd->convert_src);
	err |= FUNC2(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	/* burst scans must use timed conversions */
	if (cmd->scan_begin_src != TRIG_FOLLOW &&
	    cmd->convert_src != TRIG_TIMER)
		err |= -EINVAL;

	/* the external pin TGIN must use the same polarity */
	if (cmd->start_src == TRIG_EXT && cmd->stop_src == TRIG_EXT)
		err |= FUNC0(&cmd->start_arg,
						   cmd->stop_arg);

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	if (cmd->start_arg == TRIG_NOW)
		err |= FUNC0(&cmd->start_arg, 0);

	if (cmd->convert_src == TRIG_TIMER) {
		err |= FUNC1(&cmd->convert_arg,
						    board->ai_speed);
	}

	err |= FUNC1(&cmd->chanlist_len, 1);
	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	switch (cmd->stop_src) {
	case TRIG_COUNT:
		err |= FUNC1(&cmd->stop_arg, 1);
		break;
	case TRIG_NONE:
		err |= FUNC0(&cmd->stop_arg, 0);
		break;
	default:
		break;
	}

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	if (cmd->convert_src == TRIG_TIMER) {
		if (cmd->scan_begin_src == TRIG_FOLLOW)
			err |= FUNC6(dev, cmd);
		else /* TRIG_TIMER or TRIG_EXT */
			err |= FUNC5(dev, cmd);
	}

	if (err)
		return 4;

	/* Step 5: check channel list if it exists */
	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC4(dev, s, cmd);

	if (err)
		return 5;

	return 0;
}