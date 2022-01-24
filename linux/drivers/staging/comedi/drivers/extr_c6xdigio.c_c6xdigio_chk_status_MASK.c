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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ C6XDIGIO_STATUS_REG ; 
 int C6XDIGIO_TIME_OUT ; 
 int EBUSY ; 
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev, unsigned long context)
{
	unsigned int status;
	int timeout = 0;

	do {
		status = FUNC0(dev->iobase + C6XDIGIO_STATUS_REG);
		if ((status & 0x80) != context)
			return 0;
		timeout++;
	} while  (timeout < C6XDIGIO_TIME_OUT);

	return -EBUSY;
}