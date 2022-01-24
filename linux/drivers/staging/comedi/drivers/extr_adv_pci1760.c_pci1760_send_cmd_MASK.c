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
 int EBUSY ; 
 int /*<<< orphan*/  PCI1760_CMD_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			    unsigned char cmd, unsigned short val)
{
	unsigned long timeout;

	/* send the command and parameter */
	FUNC4(val & 0xff, dev->iobase + FUNC1(0));
	FUNC4((val >> 8) & 0xff, dev->iobase + FUNC1(1));
	FUNC4(cmd, dev->iobase + FUNC1(2));
	FUNC4(0, dev->iobase + FUNC1(3));

	/* datasheet says to allow up to 250 usec for the command to complete */
	timeout = jiffies + FUNC6(PCI1760_CMD_TIMEOUT);
	do {
		if (FUNC3(dev->iobase + FUNC0(2)) == cmd) {
			/* command success; return the feedback data */
			return FUNC3(dev->iobase + FUNC0(0)) |
			       (FUNC3(dev->iobase + FUNC0(1)) << 8);
		}
		FUNC2();
	} while (FUNC5(jiffies, timeout));

	return -EBUSY;
}