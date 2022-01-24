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
struct comedi_device {struct cb_pcidas_private* private; struct cb_pcidas_board* board_ptr; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int scan_end_arg; unsigned int chanlist_len; unsigned int stop_arg; scalar_t__ chanlist; int /*<<< orphan*/  flags; } ;
struct cb_pcidas_private {int /*<<< orphan*/  ao_pacer; } ;
struct cb_pcidas_board {int ao_scan_speed; } ;

/* Variables and functions */
 int TRIG_COUNT ; 
 int TRIG_EXT ; 
 int TRIG_INT ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int*,unsigned int) ; 
 int FUNC3 (unsigned int*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int*,int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_cmd *cmd)
{
	const struct cb_pcidas_board *board = dev->board_ptr;
	struct cb_pcidas_private *devpriv = dev->private;
	int err = 0;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC5(&cmd->start_src, TRIG_INT);
	err |= FUNC5(&cmd->scan_begin_src,
					TRIG_TIMER | TRIG_EXT);
	err |= FUNC5(&cmd->convert_src, TRIG_NOW);
	err |= FUNC5(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC5(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC4(cmd->scan_begin_src);
	err |= FUNC4(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC2(&cmd->start_arg, 0);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		err |= FUNC3(&cmd->scan_begin_arg,
						    board->ao_scan_speed);
	}

	err |= FUNC2(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC3(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC2(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	if (cmd->scan_begin_src == TRIG_TIMER) {
		unsigned int arg = cmd->scan_begin_arg;

		FUNC1(devpriv->ao_pacer,
						&arg, cmd->flags);
		err |= FUNC2(&cmd->scan_begin_arg, arg);
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