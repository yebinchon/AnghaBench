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
struct ni_private {int /*<<< orphan*/  mite_channel_lock; int /*<<< orphan*/ * gpct_mite_ring; int /*<<< orphan*/  mite; TYPE_1__* counter_dev; } ;
struct ni_gpct {int dummy; } ;
struct mite_channel {int dir; int /*<<< orphan*/  channel; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;
typedef  enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;
struct TYPE_2__ {struct ni_gpct* counters; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  NI_E_DMA_G0_G1_SEL_REG ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct mite_channel* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ni_gpct*,struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
					unsigned int gpct_index,
					enum comedi_io_direction direction)
{
	struct ni_private *devpriv = dev->private;
	struct ni_gpct *counter = &devpriv->counter_dev->counters[gpct_index];
	struct mite_channel *mite_chan;
	unsigned long flags;
	unsigned int bits;

	FUNC7(&devpriv->mite_channel_lock, flags);
	mite_chan = FUNC4(devpriv->mite,
					 devpriv->gpct_mite_ring[gpct_index]);
	if (!mite_chan) {
		FUNC8(&devpriv->mite_channel_lock, flags);
		FUNC3(dev->class_dev,
			"failed to reserve mite dma channel for counter\n");
		return -EBUSY;
	}
	mite_chan->dir = direction;
	FUNC6(counter, mite_chan);

	bits = FUNC2(mite_chan->channel);
	FUNC5(dev, NI_E_DMA_G0_G1_SEL_REG,
			FUNC1(gpct_index),
			FUNC0(gpct_index, bits));

	FUNC8(&devpriv->mite_channel_lock, flags);
	return 0;
}