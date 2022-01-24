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
struct pcl812_private {scalar_t__ ai_eos; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {unsigned int maxsize; int /*<<< orphan*/  size; } ;
struct comedi_isadma {size_t cur_dma; int /*<<< orphan*/  chan; struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct pcl812_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_isadma_desc*) ; 
 unsigned int FUNC4 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int unread_samples)
{
	struct pcl812_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
	unsigned int bytes;
	unsigned int max_samples;
	unsigned int nsamples;

	FUNC2(dma->chan);

	/* if using EOS, adapt DMA buffer to one scan */
	bytes = devpriv->ai_eos ? FUNC0(s) : desc->maxsize;
	max_samples = FUNC1(s, bytes);

	/*
	 * Determine dma size based on the buffer size plus the number of
	 * unread samples and the number of samples remaining in the command.
	 */
	nsamples = FUNC4(s, max_samples + unread_samples);
	if (nsamples > unread_samples) {
		nsamples -= unread_samples;
		desc->size = FUNC5(s, nsamples);
		FUNC3(desc);
	}
}