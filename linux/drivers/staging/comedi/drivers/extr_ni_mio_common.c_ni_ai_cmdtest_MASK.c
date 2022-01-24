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
struct ni_private {int clock_ns; scalar_t__ is_6143; scalar_t__ is_611x; int /*<<< orphan*/  routing_tables; } ;
struct ni_board_struct {int ai_speed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; unsigned int start_arg; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int scan_end_arg; unsigned int stop_arg; int /*<<< orphan*/  flags; int /*<<< orphan*/  chanlist_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NI_AI_ConvertClock ; 
 int /*<<< orphan*/  NI_AI_SampleClock ; 
 int /*<<< orphan*/  NI_AI_StartTrigger ; 
 unsigned int TRIG_COUNT ; 
#define  TRIG_EXT 130 
#define  TRIG_INT 129 
 unsigned int TRIG_NONE ; 
#define  TRIG_NOW 128 
 unsigned int TRIG_TIMER ; 
 int FUNC1 (unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int*,unsigned int) ; 
 int FUNC3 (unsigned int*,int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ num_adc_stages_611x ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s,
			 struct comedi_cmd *cmd)
{
	const struct ni_board_struct *board = dev->board_ptr;
	struct ni_private *devpriv = dev->private;
	int err = 0;
	unsigned int sources;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC5(&cmd->start_src,
					TRIG_NOW | TRIG_INT | TRIG_EXT);
	err |= FUNC5(&cmd->scan_begin_src,
					TRIG_TIMER | TRIG_EXT);

	sources = TRIG_TIMER | TRIG_EXT;
	if (devpriv->is_611x || devpriv->is_6143)
		sources |= TRIG_NOW;
	err |= FUNC5(&cmd->convert_src, sources);

	err |= FUNC5(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC5(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC4(cmd->start_src);
	err |= FUNC4(cmd->scan_begin_src);
	err |= FUNC4(cmd->convert_src);
	err |= FUNC4(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	switch (cmd->start_src) {
	case TRIG_NOW:
	case TRIG_INT:
		err |= FUNC1(&cmd->start_arg, 0);
		break;
	case TRIG_EXT:
		err |= FUNC6(FUNC0(cmd->start_arg),
						  NI_AI_StartTrigger,
						  &devpriv->routing_tables, 1);
		break;
	}

	if (cmd->scan_begin_src == TRIG_TIMER) {
		err |= FUNC3(&cmd->scan_begin_arg,
			FUNC7(dev, cmd->chanlist_len));
		err |= FUNC2(&cmd->scan_begin_arg,
						    devpriv->clock_ns *
						    0xffffff);
	} else if (cmd->scan_begin_src == TRIG_EXT) {
		/* external trigger */
		err |= FUNC6(FUNC0(cmd->scan_begin_arg),
						  NI_AI_SampleClock,
						  &devpriv->routing_tables, 1);
	} else {		/* TRIG_OTHER */
		err |= FUNC1(&cmd->scan_begin_arg, 0);
	}

	if (cmd->convert_src == TRIG_TIMER) {
		if (devpriv->is_611x || devpriv->is_6143) {
			err |= FUNC1(&cmd->convert_arg,
							   0);
		} else {
			err |= FUNC3(&cmd->convert_arg,
							    board->ai_speed);
			err |= FUNC2(&cmd->convert_arg,
							    devpriv->clock_ns *
							    0xffff);
		}
	} else if (cmd->convert_src == TRIG_EXT) {
		/* external trigger */
		err |= FUNC6(FUNC0(cmd->convert_arg),
						  NI_AI_ConvertClock,
						  &devpriv->routing_tables, 1);
	} else if (cmd->convert_src == TRIG_NOW) {
		err |= FUNC1(&cmd->convert_arg, 0);
	}

	err |= FUNC1(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT) {
		unsigned int max_count = 0x01000000;

		if (devpriv->is_611x)
			max_count -= num_adc_stages_611x;
		err |= FUNC2(&cmd->stop_arg, max_count);
		err |= FUNC3(&cmd->stop_arg, 1);
	} else {
		/* TRIG_NONE */
		err |= FUNC1(&cmd->stop_arg, 0);
	}

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	if (cmd->scan_begin_src == TRIG_TIMER) {
		unsigned int tmp = cmd->scan_begin_arg;

		cmd->scan_begin_arg =
		    FUNC9(dev, FUNC8(dev,
						       cmd->scan_begin_arg,
						       cmd->flags));
		if (tmp != cmd->scan_begin_arg)
			err++;
	}
	if (cmd->convert_src == TRIG_TIMER) {
		if (!devpriv->is_611x && !devpriv->is_6143) {
			unsigned int tmp = cmd->convert_arg;

			cmd->convert_arg =
			    FUNC9(dev, FUNC8(dev,
							       cmd->convert_arg,
							       cmd->flags));
			if (tmp != cmd->convert_arg)
				err++;
			if (cmd->scan_begin_src == TRIG_TIMER &&
			    cmd->scan_begin_arg <
			    cmd->convert_arg * cmd->scan_end_arg) {
				cmd->scan_begin_arg =
				    cmd->convert_arg * cmd->scan_end_arg;
				err++;
			}
		}
	}

	if (err)
		return 4;

	return 0;
}