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
struct comedi_device {int /*<<< orphan*/  class_dev; scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int DAQP_STATUS_EVENTS ; 
 scalar_t__ DAQP_STATUS_REG ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, int loops)
{
	unsigned int status;

	/*
	 * Reset any pending interrupts (my card has a tendency to require
	 * require multiple reads on the status register to achieve this).
	 */
	while (--loops) {
		status = FUNC1(dev->iobase + DAQP_STATUS_REG);
		if ((status & DAQP_STATUS_EVENTS) == 0)
			return 0;
	}
	FUNC0(dev->class_dev, "couldn't clear events in status register\n");
	return -EBUSY;
}