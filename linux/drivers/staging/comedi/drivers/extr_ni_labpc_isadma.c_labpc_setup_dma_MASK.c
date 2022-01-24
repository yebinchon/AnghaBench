#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct labpc_private {unsigned int count; int cmd3; TYPE_1__* dma; } ;
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_isadma_desc {unsigned int size; int /*<<< orphan*/  maxsize; } ;
struct comedi_device {struct labpc_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_4__ {struct comedi_cmd cmd; } ;
struct TYPE_3__ {struct comedi_isadma_desc* desc; } ;

/* Variables and functions */
 int CMD3_DMAEN ; 
 int CMD3_DMATCINTEN ; 
 scalar_t__ TRIG_COUNT ; 
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_isadma_desc*) ; 
 unsigned int FUNC2 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 

void FUNC3(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct labpc_private *devpriv = dev->private;
	struct comedi_isadma_desc *desc = &devpriv->dma->desc[0];
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int sample_size = FUNC0(s);

	/* set appropriate size of transfer */
	desc->size = FUNC2(dev, s, desc->maxsize);
	if (cmd->stop_src == TRIG_COUNT &&
	    devpriv->count * sample_size < desc->size)
		desc->size = devpriv->count * sample_size;

	FUNC1(desc);

	/* set CMD3 bits for caller to enable DMA and interrupt */
	devpriv->cmd3 |= (CMD3_DMAEN | CMD3_DMATCINTEN);
}