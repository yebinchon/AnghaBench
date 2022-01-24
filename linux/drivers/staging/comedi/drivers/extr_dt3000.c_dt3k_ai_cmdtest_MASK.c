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
struct dt3k_boardtype {unsigned int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct dt3k_boardtype* board_ptr; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ scan_begin_src; scalar_t__ convert_src; scalar_t__ scan_end_src; scalar_t__ stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int chanlist_len; unsigned int stop_arg; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_NOW ; 
 scalar_t__ TRIG_TIMER ; 
 int FUNC0 (unsigned int*,unsigned int) ; 
 int FUNC1 (unsigned int*,int) ; 
 int FUNC2 (unsigned int*,unsigned int) ; 
 int FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
	const struct dt3k_boardtype *board = dev->board_ptr;
	int err = 0;
	unsigned int arg;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC3(&cmd->start_src, TRIG_NOW);
	err |= FUNC3(&cmd->scan_begin_src, TRIG_TIMER);
	err |= FUNC3(&cmd->convert_src, TRIG_TIMER);
	err |= FUNC3(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC3(&cmd->stop_src, TRIG_COUNT);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */
	/* Step 2b : and mutually compatible */

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC0(&cmd->start_arg, 0);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		err |= FUNC2(&cmd->scan_begin_arg,
						    board->ai_speed);
		err |= FUNC1(&cmd->scan_begin_arg,
						    100 * 16 * 65535);
	}

	if (cmd->convert_src == TRIG_TIMER) {
		err |= FUNC2(&cmd->convert_arg,
						    board->ai_speed);
		err |= FUNC1(&cmd->convert_arg,
						    50 * 16 * 65535);
	}

	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC1(&cmd->stop_arg, 0x00ffffff);
	else	/* TRIG_NONE */
		err |= FUNC0(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	if (cmd->scan_begin_src == TRIG_TIMER) {
		arg = cmd->scan_begin_arg;
		FUNC4(100, &arg, cmd->flags);
		err |= FUNC0(&cmd->scan_begin_arg, arg);
	}

	if (cmd->convert_src == TRIG_TIMER) {
		arg = cmd->convert_arg;
		FUNC4(50, &arg, cmd->flags);
		err |= FUNC0(&cmd->convert_arg, arg);

		if (cmd->scan_begin_src == TRIG_TIMER) {
			arg = cmd->convert_arg * cmd->scan_end_arg;
			err |= FUNC2(&cmd->
							    scan_begin_arg,
							    arg);
		}
	}

	if (err)
		return 4;

	return 0;
}