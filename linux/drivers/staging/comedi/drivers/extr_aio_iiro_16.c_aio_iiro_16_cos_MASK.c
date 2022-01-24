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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AIO_IIRO_16_STATUS ; 
 unsigned int AIO_IIRO_16_STATUS_IRQE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC3 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned int status;
	unsigned int val;

	status = FUNC3(dev->iobase + AIO_IIRO_16_STATUS);
	if (!(status & AIO_IIRO_16_STATUS_IRQE))
		return IRQ_NONE;

	val = FUNC0(dev);
	val |= (status << 16);

	FUNC1(s, &val, 1);
	FUNC2(dev, s);

	return IRQ_HANDLED;
}