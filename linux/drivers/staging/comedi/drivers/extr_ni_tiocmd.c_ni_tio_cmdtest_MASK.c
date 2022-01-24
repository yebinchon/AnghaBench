#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_route_tables {int dummy; } ;
struct ni_gpct {unsigned int counter_index; TYPE_1__* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_src; unsigned int scan_begin_src; unsigned int convert_src; unsigned int scan_end_src; unsigned int stop_src; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  chanlist_len; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  start_arg; } ;
struct TYPE_2__ {struct ni_route_tables* routing_tables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int TRIG_COUNT ; 
#define  TRIG_EXT 131 
 unsigned int TRIG_FOLLOW ; 
#define  TRIG_INT 130 
 unsigned int TRIG_NONE ; 
#define  TRIG_NOW 129 
#define  TRIG_OTHER 128 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ni_route_tables const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

int FUNC7(struct comedi_device *dev,
		   struct comedi_subdevice *s,
		   struct comedi_cmd *cmd)
{
	struct ni_gpct *counter = s->private;
	unsigned int cidx = counter->counter_index;
	const struct ni_route_tables *routing_tables =
		counter->counter_dev->routing_tables;
	int err = 0;
	unsigned int sources;

	/* Step 1 : check if triggers are trivially valid */

	sources = TRIG_NOW | TRIG_INT | TRIG_OTHER;
	if (FUNC6(counter->counter_dev))
		sources |= TRIG_EXT;
	err |= FUNC4(&cmd->start_src, sources);

	err |= FUNC4(&cmd->scan_begin_src,
					TRIG_FOLLOW | TRIG_EXT | TRIG_OTHER);
	err |= FUNC4(&cmd->convert_src,
					TRIG_NOW | TRIG_EXT | TRIG_OTHER);
	err |= FUNC4(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC4(&cmd->stop_src, TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC3(cmd->start_src);
	err |= FUNC3(cmd->scan_begin_src);
	err |= FUNC3(cmd->convert_src);

	/* Step 2b : and mutually compatible */

	if (cmd->convert_src != TRIG_NOW && cmd->scan_begin_src != TRIG_FOLLOW)
		err |= -EINVAL;

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	switch (cmd->start_src) {
	case TRIG_NOW:
	case TRIG_INT:
	case TRIG_OTHER:
		err |= FUNC2(&cmd->start_arg, 0);
		break;
	case TRIG_EXT:
		/* start_arg is the start_trigger passed to ni_tio_arm() */
		/*
		 * This should be done, but we don't yet know the actual
		 * register values.  These should be tested and then documented
		 * in the ni_route_values/ni_*.csv files, with indication of
		 * who/when/which/how these these were tested.
		 * When at least a e/m/660x series have been tested, this code
		 * should be uncommented:
		 *
		 * err |= ni_check_trigger_arg(CR_CHAN(cmd->start_arg),
		 *			    NI_CtrArmStartTrigger(cidx),
		 *			    routing_tables);
		 */
		break;
	}

	/*
	 * It seems that convention is to allow either scan_begin_arg or
	 * convert_arg to specify the Gate source, with scan_begin_arg taking
	 * precedence.
	 */
	if (cmd->scan_begin_src != TRIG_EXT)
		err |= FUNC2(&cmd->scan_begin_arg, 0);
	else
		err |= FUNC5(FUNC0(cmd->scan_begin_arg),
					    FUNC1(cidx), routing_tables);

	if (cmd->convert_src != TRIG_EXT)
		err |= FUNC2(&cmd->convert_arg, 0);
	else
		err |= FUNC5(FUNC0(cmd->convert_arg),
					    FUNC1(cidx), routing_tables);

	err |= FUNC2(&cmd->scan_end_arg,
					   cmd->chanlist_len);
	err |= FUNC2(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	/* Step 5: check channel list if it exists */

	return 0;
}