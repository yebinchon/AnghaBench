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
struct usbduxsigma_private {int /*<<< orphan*/  mut; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int chanlist_len; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  scan_end_arg; int /*<<< orphan*/  start_arg; } ;

/* Variables and functions */
 int TRIG_COUNT ; 
 int TRIG_INT ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_cmd *cmd)
{
	struct usbduxsigma_private *devpriv = dev->private;
	unsigned int tmp;
	int err = 0;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC3(&cmd->start_src, TRIG_NOW | TRIG_INT);

	/*
	 * For now, always use "scan" timing with all channels updated at once
	 * (cmd->scan_begin_src == TRIG_TIMER, cmd->convert_src == TRIG_NOW).
	 *
	 * In a future version, "convert" timing with channels updated
	 * indivually may be supported in high speed mode
	 * (cmd->scan_begin_src == TRIG_FOLLOW, cmd->convert_src == TRIG_TIMER).
	 */
	err |= FUNC3(&cmd->scan_begin_src, TRIG_TIMER);
	err |= FUNC3(&cmd->convert_src, TRIG_NOW);
	err |= FUNC3(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC3(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err) {
		FUNC4(&devpriv->mut);
		return 1;
	}

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC2(cmd->start_src);
	err |= FUNC2(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC0(&cmd->start_arg, 0);

	err |= FUNC1(&cmd->scan_begin_arg, 1000000);

	err |= FUNC0(&cmd->scan_end_arg,
					   cmd->chanlist_len);

	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC1(&cmd->stop_arg, 1);
	else	/* TRIG_NONE */
		err |= FUNC0(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* Step 4: fix up any arguments */

	tmp = FUNC5(cmd->scan_begin_arg, 1000000);
	err |= FUNC0(&cmd->scan_begin_arg, tmp);

	if (err)
		return 4;

	return 0;
}