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
struct dt282x_private {int supcsr; scalar_t__ nread; int /*<<< orphan*/  ntrig; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma_desc {int size; int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; struct dt282x_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int DT2821_SUPCSR_CLRDMADNE ; 
 int DT2821_SUPCSR_DDMA ; 
 scalar_t__ DT2821_SUPCSR_REG ; 
 int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev,
				    struct comedi_subdevice *s)
{
	struct dt282x_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
	unsigned int nsamples = FUNC1(s, desc->size);
	int ret;

	FUNC6(devpriv->supcsr | DT2821_SUPCSR_CLRDMADNE,
	     dev->iobase + DT2821_SUPCSR_REG);

	FUNC2(desc->chan);

	FUNC4(dev, s, desc->virt_addr, desc->size);
	ret = FUNC0(s, desc->virt_addr, nsamples);
	if (ret != desc->size)
		return;

	devpriv->nread -= nsamples;
	if (devpriv->nread < 0) {
		FUNC3(dev->class_dev, "nread off by one\n");
		devpriv->nread = 0;
	}
	if (!devpriv->nread) {
		s->async->events |= COMEDI_CB_EOA;
		return;
	}
#if 0
	/* clear the dual dma flag, making this the last dma segment */
	/* XXX probably wrong */
	if (!devpriv->ntrig) {
		devpriv->supcsr &= ~DT2821_SUPCSR_DDMA;
		outw(devpriv->supcsr, dev->iobase + DT2821_SUPCSR_REG);
	}
#endif
	/* restart the channel */
	FUNC5(dev, dma->cur_dma, 0);

	dma->cur_dma = 1 - dma->cur_dma;
}