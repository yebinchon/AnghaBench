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
struct pcidas64_board {int ao_scan_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ scan_begin_arg; scalar_t__ chanlist_len; scalar_t__ chanlist; int /*<<< orphan*/  flags; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  start_arg; } ;

/* Variables and functions */
 int EINVAL ; 
 int TIMER_BASE ; 
 int TRIG_COUNT ; 
 int TRIG_EXT ; 
 int TRIG_INT ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (scalar_t__*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int max_counter_value ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_subdevice *s,
		      struct comedi_cmd *cmd)
{
	const struct pcidas64_board *board = dev->board_ptr;
	int err = 0;
	unsigned int tmp_arg;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC4(&cmd->start_src, TRIG_INT | TRIG_EXT);
	err |= FUNC4(&cmd->scan_begin_src,
					TRIG_TIMER | TRIG_EXT);
	err |= FUNC4(&cmd->convert_src, TRIG_NOW);
	err |= FUNC4(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC4(&cmd->stop_src, TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC3(cmd->start_src);
	err |= FUNC3(cmd->scan_begin_src);

	/* Step 2b : and mutually compatible */

	if (cmd->convert_src == TRIG_EXT && cmd->scan_begin_src == TRIG_TIMER)
		err |= -EINVAL;
	if (cmd->stop_src != TRIG_COUNT &&
	    cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_EXT)
		err |= -EINVAL;

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC1(&cmd->start_arg, 0);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		err |= FUNC2(&cmd->scan_begin_arg,
						    board->ao_scan_speed);
		if (FUNC5(cmd->scan_begin_arg, cmd->flags) >
		    max_counter_value) {
			cmd->scan_begin_arg = (max_counter_value + 2) *
					      TIMER_BASE;
			err |= -EINVAL;
		}
	}

	err |= FUNC2(&cmd->chanlist_len, 1);
	err |= FUNC1(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	if (cmd->scan_begin_src == TRIG_TIMER) {
		tmp_arg = cmd->scan_begin_arg;
		cmd->scan_begin_arg = FUNC6(cmd->scan_begin_arg,
						  cmd->flags) * TIMER_BASE;
		if (tmp_arg != cmd->scan_begin_arg)
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