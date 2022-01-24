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
struct pcidas64_private {unsigned int ao_dma_index; TYPE_1__* ao_dma_desc; int /*<<< orphan*/ * ao_buffer; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; struct pcidas64_private* private; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {void* next; void* transfer_size; } ;

/* Variables and functions */
 unsigned int AO_DMA_RING_COUNT ; 
 int /*<<< orphan*/  DMA_BUFFER_SIZE ; 
 unsigned int PLX_DMADPR_CHAINEND ; 
 unsigned int FUNC0 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (void*) ; 
 unsigned int FUNC4 (struct comedi_device*) ; 

__attribute__((used)) static unsigned int FUNC5(struct comedi_device *dev,
				       const struct comedi_cmd *cmd)
{
	struct pcidas64_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->write_subdev;
	unsigned int buffer_index = devpriv->ao_dma_index;
	unsigned int prev_buffer_index = FUNC4(dev);
	unsigned int nsamples;
	unsigned int nbytes;
	unsigned int next_bits;

	nsamples = FUNC0(dev, s,
					      devpriv->ao_buffer[buffer_index],
					      DMA_BUFFER_SIZE);
	if (nsamples == 0)
		return 0;

	nbytes = FUNC1(s, nsamples);
	devpriv->ao_dma_desc[buffer_index].transfer_size = FUNC2(nbytes);
	/* set end of chain bit so we catch underruns */
	next_bits = FUNC3(devpriv->ao_dma_desc[buffer_index].next);
	next_bits |= PLX_DMADPR_CHAINEND;
	devpriv->ao_dma_desc[buffer_index].next = FUNC2(next_bits);
	/*
	 * clear end of chain bit on previous buffer now that we have set it
	 * for the last buffer
	 */
	next_bits = FUNC3(devpriv->ao_dma_desc[prev_buffer_index].next);
	next_bits &= ~PLX_DMADPR_CHAINEND;
	devpriv->ao_dma_desc[prev_buffer_index].next = FUNC2(next_bits);

	devpriv->ao_dma_index = (buffer_index + 1) % AO_DMA_RING_COUNT;

	return nbytes;
}