#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nidio96_private {int /*<<< orphan*/  mite_channel_lock; TYPE_1__* di_mite_chan; int /*<<< orphan*/  di_mite_ring; int /*<<< orphan*/  mite; } ;
struct comedi_device {scalar_t__ mmio; int /*<<< orphan*/  class_dev; struct nidio96_private* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  COMEDI_INPUT ; 
 scalar_t__ DMA_LINE_CONTROL_GROUP1 ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev)
{
	struct nidio96_private *devpriv = dev->private;
	unsigned long flags;

	FUNC5(&devpriv->mite_channel_lock, flags);
	FUNC0(devpriv->di_mite_chan);
	devpriv->di_mite_chan =
	    FUNC2(devpriv->mite,
					  devpriv->di_mite_ring, 1, 2);
	if (!devpriv->di_mite_chan) {
		FUNC6(&devpriv->mite_channel_lock, flags);
		FUNC1(dev->class_dev, "failed to reserve mite dma channel\n");
		return -EBUSY;
	}
	devpriv->di_mite_chan->dir = COMEDI_INPUT;
	FUNC7(FUNC3(devpriv->di_mite_chan->channel) |
	       FUNC4(devpriv->di_mite_chan->channel),
	       dev->mmio + DMA_LINE_CONTROL_GROUP1);
	FUNC6(&devpriv->mite_channel_lock, flags);
	return 0;
}