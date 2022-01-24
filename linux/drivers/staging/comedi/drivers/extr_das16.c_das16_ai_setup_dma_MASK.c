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
struct das16_private_struct {struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  maxsize; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {struct das16_private_struct* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_isadma_desc*) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       unsigned int unread_samples)
{
	struct das16_private_struct *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
	unsigned int max_samples = FUNC0(s, desc->maxsize);
	unsigned int nsamples;

	/*
	 * Determine dma size based on the buffer size plus the number of
	 * unread samples and the number of samples remaining in the command.
	 */
	nsamples = FUNC2(s, max_samples + unread_samples);
	if (nsamples > unread_samples) {
		nsamples -= unread_samples;
		desc->size = FUNC3(s, nsamples);
		FUNC1(desc);
	}
}