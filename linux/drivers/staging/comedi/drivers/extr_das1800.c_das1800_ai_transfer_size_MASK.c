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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int scan_begin_src; int convert_src; unsigned int convert_arg; unsigned int scan_begin_arg; unsigned int chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
#define  TRIG_FOLLOW 129 
#define  TRIG_TIMER 128 
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct comedi_device *dev,
					     struct comedi_subdevice *s,
					     unsigned int maxbytes,
					     unsigned int ns)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int max_samples = FUNC0(s, maxbytes);
	unsigned int samples;

	samples = max_samples;

	/* for timed modes, make dma buffer fill in 'ns' time */
	switch (cmd->scan_begin_src) {
	case TRIG_FOLLOW:	/* not in burst mode */
		if (cmd->convert_src == TRIG_TIMER)
			samples = ns / cmd->convert_arg;
		break;
	case TRIG_TIMER:
		samples = ns / (cmd->scan_begin_arg * cmd->chanlist_len);
		break;
	}

	/* limit samples to what is remaining in the command */
	samples = FUNC1(s, samples);

	if (samples > max_samples)
		samples = max_samples;
	if (samples < 1)
		samples = 1;

	return FUNC2(s, samples);
}