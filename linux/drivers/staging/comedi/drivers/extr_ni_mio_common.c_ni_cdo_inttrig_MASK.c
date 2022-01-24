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
struct ni_private {int /*<<< orphan*/  mite_channel_lock; scalar_t__ cdo_mite_chan; } ;
struct comedi_subdevice {int /*<<< orphan*/  (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/  prealloc_bufsz; int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  NI_M_CDIO_CMD_REG ; 
 int NI_M_CDIO_STATUS_CDO_FIFO_FULL ; 
 int /*<<< orphan*/  NI_M_CDIO_STATUS_REG ; 
 int NI_M_CDO_CMD_ARM ; 
 int NI_M_CDO_CMD_ERR_INT_ENA_SET ; 
 int NI_M_CDO_CMD_F_E_INT_ENA_SET ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			  struct comedi_subdevice *s,
			  unsigned int trig_num)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	const unsigned int timeout = 1000;
	int retval = 0;
	unsigned int i;
	struct ni_private *devpriv = dev->private;
	unsigned long flags;

	if (trig_num != cmd->start_arg)
		return -EINVAL;

	s->async->inttrig = NULL;

	/* read alloc the entire buffer */
	FUNC0(s, s->async->prealloc_bufsz);

	FUNC6(&devpriv->mite_channel_lock, flags);
	if (devpriv->cdo_mite_chan) {
		FUNC3(devpriv->cdo_mite_chan, 32, 32);
		FUNC2(devpriv->cdo_mite_chan);
	} else {
		FUNC1(dev->class_dev, "BUG: no cdo mite channel?\n");
		retval = -EIO;
	}
	FUNC7(&devpriv->mite_channel_lock, flags);
	if (retval < 0)
		return retval;

	/*
	 * XXX not sure what interrupt C group does
	 * wait for dma to fill output fifo
	 * ni_writeb(dev, NI_M_INTC_ENA, NI_M_INTC_ENA_REG);
	 */
	for (i = 0; i < timeout; ++i) {
		if (FUNC4(dev, NI_M_CDIO_STATUS_REG) &
		    NI_M_CDIO_STATUS_CDO_FIFO_FULL)
			break;
		FUNC9(10, 100);
	}
	if (i == timeout) {
		FUNC1(dev->class_dev, "dma failed to fill cdo fifo!\n");
		s->cancel(dev, s);
		return -EIO;
	}
	FUNC5(dev, NI_M_CDO_CMD_ARM |
		       NI_M_CDO_CMD_ERR_INT_ENA_SET |
		       NI_M_CDO_CMD_F_E_INT_ENA_SET,
		  NI_M_CDIO_CMD_REG);
	return retval;
}