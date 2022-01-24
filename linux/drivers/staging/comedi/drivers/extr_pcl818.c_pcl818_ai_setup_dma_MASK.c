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
struct pcl818_private {struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  maxsize; } ;
struct comedi_isadma {size_t cur_dma; int /*<<< orphan*/  chan; struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct pcl818_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_isadma_desc*) ; 
 unsigned int FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int unread_samples)
{
	struct pcl818_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
	unsigned int max_samples = FUNC0(s, desc->maxsize);
	unsigned int nsamples;

	FUNC1(dma->chan);

	/*
	 * Determine dma size based on the buffer maxsize plus the number of
	 * unread samples and the number of samples remaining in the command.
	 */
	nsamples = FUNC3(s, max_samples + unread_samples);
	if (nsamples > unread_samples) {
		nsamples -= unread_samples;
		desc->size = FUNC4(s, nsamples);
		FUNC2(desc);
	}
}