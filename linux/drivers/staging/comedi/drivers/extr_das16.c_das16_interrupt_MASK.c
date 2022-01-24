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
struct das16_private_struct {int ctrl_reg; struct comedi_isadma* dma; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_isadma_desc {unsigned int size; int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  class_dev; struct comedi_subdevice* read_subdev; struct das16_private_struct* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int DAS16_CTRL_DMAE ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	struct das16_private_struct *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
	unsigned long spin_flags;
	unsigned int residue;
	unsigned int nbytes;
	unsigned int nsamples;

	FUNC7(&dev->spinlock, spin_flags);
	if (!(devpriv->ctrl_reg & DAS16_CTRL_DMAE)) {
		FUNC8(&dev->spinlock, spin_flags);
		return;
	}

	/*
	 * The pc104-das16jr (at least) has problems if the dma
	 * transfer is interrupted in the middle of transferring
	 * a 16 bit sample.
	 */
	residue = FUNC4(desc->chan,
						  FUNC1(s));

	/* figure out how many samples to read */
	if (residue > desc->size) {
		FUNC6(dev->class_dev, "residue > transfer size!\n");
		async->events |= COMEDI_CB_ERROR;
		nbytes = 0;
	} else {
		nbytes = desc->size - residue;
	}
	nsamples = FUNC2(s, nbytes);

	/* restart DMA if more samples are needed */
	if (nsamples) {
		dma->cur_dma = 1 - dma->cur_dma;
		FUNC5(dev, s, nsamples);
	}

	FUNC8(&dev->spinlock, spin_flags);

	FUNC0(s, desc->virt_addr, nsamples);

	if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg)
		async->events |= COMEDI_CB_EOA;

	FUNC3(dev, s);
}