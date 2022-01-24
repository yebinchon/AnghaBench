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
typedef  unsigned int u32 ;
struct mite_channel {int dummy; } ;
struct comedi_subdevice {TYPE_1__* device; struct comedi_async* async; } ;
struct comedi_cmd {unsigned int stop_arg; scalar_t__ stop_src; } ;
struct comedi_async {unsigned int buf_read_alloc_count; unsigned int buf_read_count; int /*<<< orphan*/  events; int /*<<< orphan*/  prealloc_bufsz; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,int) ; 
 unsigned int FUNC2 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC4 (struct mite_channel*) ; 
 unsigned int FUNC5 (struct mite_channel*) ; 

__attribute__((used)) static void FUNC6(struct mite_channel *mite_chan,
				 struct comedi_subdevice *s)
{
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	u32 stop_count = cmd->stop_arg * FUNC2(s);
	unsigned int old_alloc_count = async->buf_read_alloc_count;
	u32 nbytes_ub, nbytes_lb;
	int count;
	bool finite_regen = (cmd->stop_src == TRIG_NONE && stop_count != 0);

	/* read alloc as much as we can */
	FUNC0(s, async->prealloc_bufsz);
	nbytes_lb = FUNC4(mite_chan);
	if (cmd->stop_src == TRIG_COUNT && (int)(nbytes_lb - stop_count) > 0)
		nbytes_lb = stop_count;
	nbytes_ub = FUNC5(mite_chan);
	if (cmd->stop_src == TRIG_COUNT && (int)(nbytes_ub - stop_count) > 0)
		nbytes_ub = stop_count;

	if ((!finite_regen || stop_count > old_alloc_count) &&
	    ((int)(nbytes_ub - old_alloc_count) > 0)) {
		FUNC3(s->device->class_dev, "mite: DMA underrun\n");
		async->events |= COMEDI_CB_OVERFLOW;
		return;
	}

	if (finite_regen) {
		/*
		 * This is a special case where we continuously output a finite
		 * buffer.  In this case, we do not free any of the memory,
		 * hence we expect that old_alloc_count will reach a maximum of
		 * stop_count bytes.
		 */
		return;
	}

	count = nbytes_lb - async->buf_read_count;
	if (count > 0) {
		FUNC1(s, count);
		async->events |= COMEDI_CB_BLOCK;
	}
}