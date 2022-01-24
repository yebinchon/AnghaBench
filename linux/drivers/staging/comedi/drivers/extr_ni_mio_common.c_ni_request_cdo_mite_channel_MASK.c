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
struct ni_private {int /*<<< orphan*/  mite_channel_lock; struct mite_channel* cdo_mite_chan; int /*<<< orphan*/  cdo_mite_ring; int /*<<< orphan*/  mite; } ;
struct mite_channel {int /*<<< orphan*/  channel; int /*<<< orphan*/  dir; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_OUTPUT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NI_M_CDIO_DMA_SEL_CDO_MASK ; 
 int /*<<< orphan*/  NI_M_CDIO_DMA_SEL_REG ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mite_channel* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	struct mite_channel *mite_chan;
	unsigned long flags;
	unsigned int bits;

	FUNC5(&devpriv->mite_channel_lock, flags);
	mite_chan = FUNC3(devpriv->mite, devpriv->cdo_mite_ring);
	if (!mite_chan) {
		FUNC6(&devpriv->mite_channel_lock, flags);
		FUNC2(dev->class_dev,
			"failed to reserve mite dma channel for correlated digital output\n");
		return -EBUSY;
	}
	mite_chan->dir = COMEDI_OUTPUT;
	devpriv->cdo_mite_chan = mite_chan;

	/*
	 * XXX just guessing NI_STC_DMA_CHAN_SEL()
	 * returns the right bits, under the assumption the cdio dma
	 * selection works just like ai/ao/gpct.
	 * Definitely works for dma channels 0 and 1.
	 */
	bits = FUNC1(mite_chan->channel);
	FUNC4(dev, NI_M_CDIO_DMA_SEL_REG,
			NI_M_CDIO_DMA_SEL_CDO_MASK,
			FUNC0(bits));

	FUNC6(&devpriv->mite_channel_lock, flags);
	return 0;
}