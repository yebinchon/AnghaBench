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
struct pcl816_private {unsigned int ai_poll_ptr; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int /*<<< orphan*/  virt_addr; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct pcl816_private* private; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_subdevice*) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC3 (struct comedi_isadma*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct pcl816_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc;
	unsigned long flags;
	unsigned int poll;
	int ret;

	FUNC4(&dev->spinlock, flags);

	poll = FUNC3(dma);
	poll = FUNC1(s, poll);
	if (poll > devpriv->ai_poll_ptr) {
		desc = &dma->desc[dma->cur_dma];
		FUNC6(dev, s, desc->virt_addr,
				      devpriv->ai_poll_ptr,
				      poll - devpriv->ai_poll_ptr);
		/* new buffer position */
		devpriv->ai_poll_ptr = poll;

		FUNC2(dev, s);

		ret = FUNC0(s);
	} else {
		/* no new samples */
		ret = 0;
	}
	FUNC5(&dev->spinlock, flags);

	return ret;
}