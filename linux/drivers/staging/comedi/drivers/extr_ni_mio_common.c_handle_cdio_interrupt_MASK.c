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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; struct ni_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 size_t NI_DIO_SUBDEV ; 
 int /*<<< orphan*/  NI_M_CDIO_CMD_REG ; 
 unsigned int NI_M_CDIO_STATUS_CDO_ERROR ; 
 unsigned int NI_M_CDIO_STATUS_CDO_FIFO_EMPTY ; 
 int /*<<< orphan*/  NI_M_CDIO_STATUS_REG ; 
 int /*<<< orphan*/  NI_M_CDO_CMD_ERR_INT_CONFIRM ; 
 int /*<<< orphan*/  NI_M_CDO_CMD_F_E_INT_ENA_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_subdevice*,int) ; 
 unsigned int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	unsigned int cdio_status;
	struct comedi_subdevice *s = &dev->subdevices[NI_DIO_SUBDEV];
	unsigned long flags;

	FUNC4(&devpriv->mite_channel_lock, flags);
	if (devpriv->cdo_mite_chan)
		FUNC1(devpriv->cdo_mite_chan, s, true);
	FUNC5(&devpriv->mite_channel_lock, flags);

	cdio_status = FUNC2(dev, NI_M_CDIO_STATUS_REG);
	if (cdio_status & NI_M_CDIO_STATUS_CDO_ERROR) {
		/* XXX just guessing this is needed and does something useful */
		FUNC3(dev, NI_M_CDO_CMD_ERR_INT_CONFIRM,
			  NI_M_CDIO_CMD_REG);
		s->async->events |= COMEDI_CB_OVERFLOW;
	}
	if (cdio_status & NI_M_CDIO_STATUS_CDO_FIFO_EMPTY) {
		FUNC3(dev, NI_M_CDO_CMD_F_E_INT_ENA_CLR,
			  NI_M_CDIO_CMD_REG);
		/* s->async->events |= COMEDI_CB_EOA; */
	}
	FUNC0(dev, s);
}