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
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  chanlist_len; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  start_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLOWEST_TIMER ; 
 int TRIG_COUNT ; 
 int TRIG_FOLLOW ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_cmd *cmd)
{
	int err = 0;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC4(&cmd->start_src, TRIG_NOW);
	err |= FUNC4(&cmd->scan_begin_src,
					TRIG_FOLLOW | TRIG_TIMER);
	err |= FUNC4(&cmd->convert_src, TRIG_TIMER);
	err |= FUNC4(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC4(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC3(cmd->scan_begin_src);
	err |= FUNC3(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC0(&cmd->start_arg, 0);

	if (cmd->scan_begin_src == TRIG_FOLLOW) {
		/* internal trigger */
		err |= FUNC0(&cmd->scan_begin_arg, 0);
	} else {
#if 0
		/* external trigger */
		/* should be level/edge, hi/lo specification here */
		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
#endif
	}

	err |= FUNC2(&cmd->convert_arg, 10000);
#if 0
	err |= comedi_check_trigger_arg_max(&cmd->convert_arg, SLOWEST_TIMER);
#endif

	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC2(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC0(&cmd->stop_arg, 0);

	if (err)
		return 3;

	return 0;
}