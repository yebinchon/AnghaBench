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
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; unsigned int scan_begin_arg; unsigned int convert_arg; unsigned int chanlist_len; unsigned int scan_end_arg; unsigned int stop_arg; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int NSEC_PER_USEC ; 
 int TRIG_COUNT ; 
 int TRIG_INT ; 
 int TRIG_NONE ; 
 int TRIG_NOW ; 
 int TRIG_TIMER ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC1 (unsigned int*,unsigned int) ; 
 int FUNC2 (unsigned int*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int*,int) ; 
 unsigned int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_cmd *cmd)
{
	int err = 0;
	unsigned int arg;

	/* Step 1 : check if triggers are trivially valid */

	err |= FUNC4(&cmd->start_src, TRIG_INT);
	err |= FUNC4(&cmd->scan_begin_src, TRIG_TIMER);
	err |= FUNC4(&cmd->convert_src, TRIG_NOW);
	err |= FUNC4(&cmd->scan_end_src, TRIG_COUNT);
	err |= FUNC4(&cmd->stop_src, TRIG_COUNT | TRIG_NONE);

	if (err)
		return 1;

	/* Step 2a : make sure trigger sources are unique */

	err |= FUNC3(cmd->stop_src);

	/* Step 2b : and mutually compatible */

	if (err)
		return 2;

	/* Step 3: check if arguments are trivially valid */

	err |= FUNC2(&cmd->scan_begin_arg,
					    NSEC_PER_USEC);
	err |= FUNC1(&cmd->convert_arg, 0);
	err |= FUNC2(&cmd->chanlist_len, 1);
	err |= FUNC1(&cmd->scan_end_arg,
					   cmd->chanlist_len);
	if (cmd->stop_src == TRIG_COUNT)
		err |= FUNC2(&cmd->stop_arg, 1);
	else	/* cmd->stop_src == TRIG_NONE */
		err |= FUNC1(&cmd->stop_arg, 0);

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	/* round scan_begin_arg to nearest microsecond */
	arg = cmd->scan_begin_arg;
	arg = FUNC5(arg, FUNC6(UINT_MAX, (unsigned int)NSEC_PER_USEC));
	arg = NSEC_PER_USEC * FUNC0(arg, NSEC_PER_USEC);
	err |= FUNC1(&cmd->scan_begin_arg, arg);

	if (err)
		return 4;

	return 0;
}