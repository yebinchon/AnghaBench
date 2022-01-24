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
struct comedi_subdevice {scalar_t__ io_bits; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int chanlist_len; scalar_t__ chanlist; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  start_arg; } ;

/* Variables and functions */
 int EINVAL ; 
 int TRIG_COUNT ; 
 int TRIG_EXT ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int*,int) ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_cmd*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_cmd *cmd)
{
	int err = 0;

	if (s->io_bits)
		return -EINVAL;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC3(&cmd->start_src, TRIG_NOW);
	err |= FUNC3(&cmd->scan_begin_src, TRIG_EXT);
	err |= FUNC3(&cmd->convert_src, TRIG_NOW);
	err |= FUNC3(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC3(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC2(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC0(&cmd->start_arg, 0);

	if (!cmd->chanlist_len || !cmd->chanlist) {
		cmd->chanlist_len = 32;
		err |= -EINVAL;
	}
	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC1(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC0(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	/* Step 5: check channel list if it exists */

	if (cmd->chanlist && cmd->chanlist_len > 0)
		err |= FUNC4(dev, s, cmd);

	if (err)
		return 5;

	return 0;
}