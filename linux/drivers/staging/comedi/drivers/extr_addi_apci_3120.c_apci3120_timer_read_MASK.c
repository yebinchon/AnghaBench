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
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int /*<<< orphan*/  do_bits; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ APCI3120_CTR0_REG ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ APCI3120_TIMER_REG ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev,
					unsigned int timer)
{
	struct apci3120_private *devpriv = dev->private;
	unsigned int val;

	/* read 16-bit value from timer (lower 16-bits of timer 2) */
	FUNC3(FUNC0(devpriv->do_bits) |
	     FUNC1(timer),
	     dev->iobase + APCI3120_CTR0_REG);
	val = FUNC2(dev->iobase + APCI3120_TIMER_REG);

	if (timer == 2) {
		/* read upper 16-bits from timer 2 */
		FUNC3(FUNC0(devpriv->do_bits) |
		     FUNC1(timer + 1),
		     dev->iobase + APCI3120_CTR0_REG);
		val |= (FUNC2(dev->iobase + APCI3120_TIMER_REG) << 16);
	}

	return val;
}