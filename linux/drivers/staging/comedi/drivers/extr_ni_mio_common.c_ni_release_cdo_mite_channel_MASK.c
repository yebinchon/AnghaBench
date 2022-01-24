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
struct ni_private {int /*<<< orphan*/  mite_channel_lock; int /*<<< orphan*/ * cdo_mite_chan; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI_M_CDIO_DMA_SEL_CDO_MASK ; 
 int /*<<< orphan*/  NI_M_CDIO_DMA_SEL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	unsigned long flags;

	FUNC2(&devpriv->mite_channel_lock, flags);
	if (devpriv->cdo_mite_chan) {
		FUNC1(dev, NI_M_CDIO_DMA_SEL_REG,
				NI_M_CDIO_DMA_SEL_CDO_MASK, 0);
		FUNC0(devpriv->cdo_mite_chan);
		devpriv->cdo_mite_chan = NULL;
	}
	FUNC3(&devpriv->mite_channel_lock, flags);
}