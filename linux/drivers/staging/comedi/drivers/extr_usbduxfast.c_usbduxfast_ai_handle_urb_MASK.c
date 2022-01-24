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
struct usbduxfast_private {scalar_t__ ignore; } ;
struct urb {scalar_t__ status; int /*<<< orphan*/  dev; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  actual_length; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct usbduxfast_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int COMEDI_CB_CANCEL_MASK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct urb *urb)
{
	struct usbduxfast_private *devpriv = dev->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	int ret;

	if (devpriv->ignore) {
		devpriv->ignore--;
	} else {
		unsigned int nsamples;

		nsamples = FUNC1(s, urb->actual_length);
		nsamples = FUNC2(s, nsamples);
		FUNC0(s, urb->transfer_buffer, nsamples);

		if (cmd->stop_src == TRIG_COUNT &&
		    async->scans_done >= cmd->stop_arg)
			async->events |= COMEDI_CB_EOA;
	}

	/* if command is still running, resubmit urb for BULK transfer */
	if (!(async->events & COMEDI_CB_CANCEL_MASK)) {
		urb->dev = FUNC3(dev);
		urb->status = 0;
		ret = FUNC5(urb, GFP_ATOMIC);
		if (ret < 0) {
			FUNC4(dev->class_dev, "urb resubm failed: %d", ret);
			async->events |= COMEDI_CB_ERROR;
		}
	}
}