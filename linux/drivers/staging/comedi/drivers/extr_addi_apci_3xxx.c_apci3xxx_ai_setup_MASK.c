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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int EBUSY ; 
 scalar_t__ FUNC3 (struct comedi_device*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, unsigned int chanspec)
{
	unsigned int chan = FUNC1(chanspec);
	unsigned int range = FUNC2(chanspec);
	unsigned int aref = FUNC0(chanspec);
	unsigned int delay_mode;
	unsigned int val;

	if (FUNC3(dev))
		return -EBUSY;

	/* Clear the FIFO */
	FUNC5(0x10000, dev->mmio + 12);

	/* Get and save the delay mode */
	delay_mode = FUNC4(dev->mmio + 4);
	delay_mode &= 0xfffffef0;

	/* Channel configuration selection */
	FUNC5(delay_mode, dev->mmio + 4);

	/* Make the configuration */
	val = (range & 3) | ((range >> 2) << 6) |
	      ((aref == AREF_DIFF) << 7);
	FUNC5(val, dev->mmio + 0);

	/* Channel selection */
	FUNC5(delay_mode | 0x100, dev->mmio + 4);
	FUNC5(chan, dev->mmio + 0);

	/* Restore delay mode */
	FUNC5(delay_mode, dev->mmio + 4);

	/* Set the number of sequence to 1 */
	FUNC5(1, dev->mmio + 48);

	return 0;
}