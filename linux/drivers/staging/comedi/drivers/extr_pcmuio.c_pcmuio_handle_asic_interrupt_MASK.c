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
struct comedi_device {struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 scalar_t__ PCMUIO_INT_PENDING_REG ; 
 int /*<<< orphan*/  PCMUIO_PAGE_INT_ID ; 
 int FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, int asic)
{
	/* there are could be two asics so we can't use dev->read_subdev */
	struct comedi_subdevice *s = &dev->subdevices[asic * 2];
	unsigned long iobase = FUNC1(dev, asic);
	unsigned int val;

	/* are there any interrupts pending */
	val = FUNC0(iobase + PCMUIO_INT_PENDING_REG) & 0x07;
	if (!val)
		return 0;

	/* get, and clear, the pending interrupts */
	val = FUNC3(dev, asic, PCMUIO_PAGE_INT_ID, 0);
	FUNC4(dev, 0, asic, PCMUIO_PAGE_INT_ID, 0);

	/* handle the pending interrupts */
	FUNC2(dev, s, val);

	return 1;
}