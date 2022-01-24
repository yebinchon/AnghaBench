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
struct labpc_private {unsigned int count; TYPE_1__* dma; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_isadma_desc {unsigned int size; int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  chan; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct labpc_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {struct comedi_isadma_desc* desc; } ;

/* Variables and functions */
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct comedi_subdevice*,unsigned int) ; 

void FUNC4(struct comedi_device *dev)
{
	struct labpc_private *devpriv = dev->private;
	struct comedi_isadma_desc *desc = &devpriv->dma->desc[0];
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int max_samples = FUNC1(s, desc->size);
	unsigned int residue;
	unsigned int nsamples;
	unsigned int leftover;

	/*
	 * residue is the number of bytes left to be done on the dma
	 * transfer.  It should always be zero at this point unless
	 * the stop_src is set to external triggering.
	 */
	residue = FUNC2(desc->chan);

	/*
	 * Figure out how many samples to read for this transfer and
	 * how many will be stored for next time.
	 */
	nsamples = max_samples - FUNC1(s, residue);
	if (cmd->stop_src == TRIG_COUNT) {
		if (devpriv->count <= nsamples) {
			nsamples = devpriv->count;
			leftover = 0;
		} else {
			leftover = devpriv->count - nsamples;
			if (leftover > max_samples)
				leftover = max_samples;
		}
		devpriv->count -= nsamples;
	} else {
		leftover = max_samples;
	}
	desc->size = FUNC3(s, leftover);

	FUNC0(s, desc->virt_addr, nsamples);
}