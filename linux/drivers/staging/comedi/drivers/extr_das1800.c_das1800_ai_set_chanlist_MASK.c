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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ DAS1800_QRAM ; 
 scalar_t__ DAS1800_QRAM_ADDRESS ; 
 scalar_t__ DAS1800_SELECT ; 
 unsigned int QRAM ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
				    unsigned int *chanlist, unsigned int len)
{
	unsigned long flags;
	unsigned int i;

	/* protects the indirect addressing selected by DAS1800_SELECT */
	FUNC4(&dev->spinlock, flags);

	/* select QRAM register and set start address */
	FUNC2(QRAM, dev->iobase + DAS1800_SELECT);
	FUNC2(len - 1, dev->iobase + DAS1800_QRAM_ADDRESS);

	/* make channel / gain list */
	for (i = 0; i < len; i++) {
		unsigned int chan = FUNC0(chanlist[i]);
		unsigned int range = FUNC1(chanlist[i]);
		unsigned short val;

		val = chan | ((range & 0x3) << 8);
		FUNC3(val, dev->iobase + DAS1800_QRAM);
	}

	/* finish write to QRAM */
	FUNC2(len - 1, dev->iobase + DAS1800_QRAM_ADDRESS);

	FUNC5(&dev->spinlock, flags);
}