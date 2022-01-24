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
struct ni_private {int /*<<< orphan*/  routing_tables; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {scalar_t__ chanlist_len; scalar_t__ chanlist; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  start_arg; int /*<<< orphan*/  stop_src; int /*<<< orphan*/  scan_end_src; int /*<<< orphan*/  convert_src; int /*<<< orphan*/  scan_begin_src; int /*<<< orphan*/  start_src; } ;
struct TYPE_2__ {unsigned int prealloc_bufsz; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NI_DO_SampleClock ; 
 int /*<<< orphan*/  TRIG_COUNT ; 
 int /*<<< orphan*/  TRIG_EXT ; 
 int /*<<< orphan*/  TRIG_INT ; 
 int /*<<< orphan*/  TRIG_NONE ; 
 int /*<<< orphan*/  TRIG_NOW ; 
 unsigned int FUNC3 (struct comedi_subdevice*,struct comedi_cmd*) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
	struct ni_private *devpriv = dev->private;
	unsigned int bytes_per_scan;
	int err = 0;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC6(&cmd->start_src, TRIG_INT);
	err |= FUNC6(&cmd->scan_begin_src, TRIG_EXT);
	err |= FUNC6(&cmd->convert_src, TRIG_NOW);
	err |= FUNC6(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC6(&cmd->stop_src, TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */
	/* Step 2b : and mutually compatible */

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC4(&cmd->start_arg, 0);

	/*
	 * Although NI_D[IO]_SampleClock are the same, perhaps we should still,
	 * for completeness, test whether the cmd is output or input?
	 */
	err |= FUNC8(FUNC1(cmd->scan_begin_arg),
				    NI_DO_SampleClock,
				    &devpriv->routing_tables);
	if (FUNC2(cmd->scan_begin_arg) != 0 ||
	    FUNC0(cmd->scan_begin_arg) != 0)
		err |= -EINVAL;

	err |= FUNC4(&cmd->convert_arg, 0);
	err |= FUNC4(&cmd->scan_end_arg,
					   cmd->chanlist_len);
	bytes_per_scan = FUNC3(s, cmd);
	if (bytes_per_scan) {
		err |= FUNC5(&cmd->stop_arg,
						    s->async->prealloc_bufsz /
						    bytes_per_scan);
	}

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	/* Step 5: check channel list if it exists */

	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC7(dev, s, cmd);

	if (err)
		return 5;

	return 0;
}