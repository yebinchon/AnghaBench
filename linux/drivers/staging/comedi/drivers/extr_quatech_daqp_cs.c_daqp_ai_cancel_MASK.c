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
struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;

/* Variables and functions */
 scalar_t__ DAQP_CMD_REG ; 
 int /*<<< orphan*/  DAQP_CMD_STOP ; 
 scalar_t__ DAQP_CTRL_REG ; 
 scalar_t__ DAQP_STATUS_REG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			  struct comedi_subdevice *s)
{
	struct daqp_private *devpriv = dev->private;

	if (devpriv->stop)
		return -EIO;

	/*
	 * Stop any conversions, disable interrupts, and clear
	 * the status event flags.
	 */
	FUNC1(DAQP_CMD_STOP, dev->iobase + DAQP_CMD_REG);
	FUNC1(0, dev->iobase + DAQP_CTRL_REG);
	FUNC0(dev->iobase + DAQP_STATUS_REG);

	return 0;
}