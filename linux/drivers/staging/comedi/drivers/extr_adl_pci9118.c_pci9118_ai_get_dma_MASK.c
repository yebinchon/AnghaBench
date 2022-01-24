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
struct pci9118_private {size_t dma_actbuf; int ai_do; scalar_t__ dma_doublebuf; int /*<<< orphan*/  ai_neverending; struct pci9118_dmabuf* dmabuf; } ;
struct pci9118_dmabuf {int /*<<< orphan*/  virt; int /*<<< orphan*/  use_size; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pci9118_private* private; } ;
struct comedi_cmd {scalar_t__ stop_arg; } ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int COMEDI_CB_CANCEL_MASK ; 
 int COMEDI_CB_EOA ; 
 unsigned int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int) ; 
 unsigned int FUNC4 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
			       struct comedi_subdevice *s)
{
	struct pci9118_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	struct pci9118_dmabuf *dmabuf = &devpriv->dmabuf[devpriv->dma_actbuf];
	unsigned int n_all = FUNC0(s, dmabuf->use_size);
	unsigned int n_valid;
	bool more_dma;

	/* determine whether more DMA buffers to do after this one */
	n_valid = FUNC4(dev, s, n_all);
	more_dma = n_valid < FUNC1(s, n_valid + 1);

	/* switch DMA buffers and restart DMA if double buffering */
	if (more_dma && devpriv->dma_doublebuf) {
		devpriv->dma_actbuf = 1 - devpriv->dma_actbuf;
		FUNC5(dev, devpriv->dma_actbuf);
		if (devpriv->ai_do == 4)
			FUNC3(dev, devpriv->dma_actbuf);
	}

	if (n_all)
		FUNC2(dev, s, dmabuf->virt, n_all);

	if (!devpriv->ai_neverending) {
		if (s->async->scans_done >= cmd->stop_arg)
			s->async->events |= COMEDI_CB_EOA;
	}

	if (s->async->events & COMEDI_CB_CANCEL_MASK)
		more_dma = false;

	/* restart DMA if not double buffering */
	if (more_dma && !devpriv->dma_doublebuf) {
		FUNC5(dev, 0);
		if (devpriv->ai_do == 4)
			FUNC3(dev, 0);
	}
}