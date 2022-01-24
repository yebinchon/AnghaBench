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
struct labpc_boardinfo {int ai_speed; scalar_t__ is_labpc1200; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct labpc_boardinfo* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int start_arg; int chanlist_len; int scan_end_arg; int convert_arg; int scan_begin_arg; int stop_arg; scalar_t__ chanlist; } ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 int EINVAL ; 
#define  TRIG_COUNT 131 
#define  TRIG_EXT 130 
 unsigned int TRIG_FOLLOW ; 
#define  TRIG_NONE 129 
#define  TRIG_NOW 128 
 unsigned int TRIG_TIMER ; 
 int FUNC0 (int*,int) ; 
 int FUNC1 (int*,int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_cmd*,int) ; 
 int FUNC5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 
 int FUNC6 (struct comedi_cmd*) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			    struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
	const struct labpc_boardinfo *board = dev->board_ptr;
	int err = 0;
	int tmp, tmp2;
	unsigned int stop_mask;
	enum scan_mode mode;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC3(&cmd->start_src, TRIG_NOW | TRIG_EXT);
	err |= FUNC3(&cmd->scan_begin_src,
					TRIG_TIMER | TRIG_FOLLOW | TRIG_EXT);
	err |= FUNC3(&cmd->convert_src,
					TRIG_TIMER | TRIG_EXT);
	err |= FUNC3(&cmd->scan_end_src, TRIG_COUNT);

	stop_mask = TRIG_COUNT | TRIG_NONE;
	if (board->is_labpc1200)
		stop_mask |= TRIG_EXT;
	err |= FUNC3(&cmd->stop_src, stop_mask);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC2(cmd->start_src);
	err |= FUNC2(cmd->scan_begin_src);
	err |= FUNC2(cmd->convert_src);
	err |= FUNC2(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	/* can't have external stop and start triggers at once */
	if (cmd->start_src == TRIG_EXT && cmd->stop_src == TRIG_EXT)
		err++;

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	switch (cmd->start_src) {
	case TRIG_NOW:
		err |= FUNC0(&cmd->start_arg, 0);
		break;
	case TRIG_EXT:
		/* start_arg value is ignored */
		break;
	}

	if (!cmd->chanlist_len)
		err |= -EINVAL;
	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->convert_src == TRIG_TIMER) {
		err |= FUNC1(&cmd->convert_arg,
						    board->ai_speed);
	}

	/* make sure scan timing is not too fast */
	if (cmd->scan_begin_src == TRIG_TIMER) {
		if (cmd->convert_src == TRIG_TIMER) {
			err |= FUNC1(&cmd->
							    scan_begin_arg,
							    cmd->convert_arg *
							    cmd->chanlist_len);
		}
		err |= FUNC1(&cmd->scan_begin_arg,
						    board->ai_speed *
						    cmd->chanlist_len);
	}

	switch (cmd->stop_src) {
	case TRIG_COUNT:
		err |= FUNC1(&cmd->stop_arg, 1);
		break;
	case TRIG_NONE:
		err |= FUNC0(&cmd->stop_arg, 0);
		break;
		/*
		 * TRIG_EXT doesn't care since it doesn't
		 * trigger off a numbered channel
		 */
	default:
		break;
	}

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	tmp = cmd->convert_arg;
	tmp2 = cmd->scan_begin_arg;
	mode = FUNC6(cmd);
	FUNC4(dev, cmd, mode);
	if (tmp != cmd->convert_arg || tmp2 != cmd->scan_begin_arg)
		err++;

	if (err)
		return 4;

	/* Step 5: check channel list if it exists */
	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC5(dev, s, cmd);

	if (err)
		return 5;

	return 0;
}