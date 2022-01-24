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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct apci3120_private* private; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {int events; scalar_t__ scans_done; struct comedi_cmd cmd; } ;
struct apci3120_private {size_t cur_dmabuf; struct apci3120_dmabuf* dmabuf; scalar_t__ use_double_buffer; scalar_t__ amcc; } ;
struct apci3120_dmabuf {unsigned int use_size; int /*<<< orphan*/  virt; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_MWTC ; 
 int CMDF_WAKE_EOS ; 
 int COMEDI_CB_CANCEL_MASK ; 
 int COMEDI_CB_EOS ; 
 int COMEDI_CB_ERROR ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct apci3120_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				   struct comedi_subdevice *s)
{
	struct apci3120_private *devpriv = dev->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	struct apci3120_dmabuf *dmabuf;
	unsigned int nbytes;
	unsigned int nsamples;

	dmabuf = &devpriv->dmabuf[devpriv->cur_dmabuf];

	nbytes = dmabuf->use_size - FUNC4(devpriv->amcc + AMCC_OP_REG_MWTC);

	if (nbytes < dmabuf->use_size)
		FUNC3(dev->class_dev, "Interrupted DMA transfer!\n");
	if (nbytes & 1) {
		FUNC3(dev->class_dev, "Odd count of bytes in DMA ring!\n");
		async->events |= COMEDI_CB_ERROR;
		return;
	}

	nsamples = FUNC2(s, nbytes);
	if (nsamples) {
		FUNC1(s, dmabuf->virt, nsamples);

		if (!(cmd->flags & CMDF_WAKE_EOS))
			async->events |= COMEDI_CB_EOS;
	}

	if ((async->events & COMEDI_CB_CANCEL_MASK) ||
	    (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg))
		return;

	if (devpriv->use_double_buffer) {
		/* switch DMA buffers for next interrupt */
		devpriv->cur_dmabuf = !devpriv->cur_dmabuf;
		dmabuf = &devpriv->dmabuf[devpriv->cur_dmabuf];
		FUNC0(dev, dmabuf);
	} else {
		/* restart DMA if not using double buffering */
		FUNC0(dev, dmabuf);
	}
}