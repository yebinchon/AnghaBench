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
struct comedi_device {int /*<<< orphan*/  irq; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	unsigned int val;
	int i;

	/* Disable the interrupt */
	FUNC0(dev->irq);

	/* Clear the start command */
	FUNC3(0, dev->mmio + 8);

	/* Reset the interrupt flags */
	val = FUNC2(dev->mmio + 16);
	FUNC3(val, dev->mmio + 16);

	/* clear the EOS */
	FUNC2(dev->mmio + 20);

	/* Clear the FIFO */
	for (i = 0; i < 16; i++)
		val = FUNC2(dev->mmio + 28);

	/* Enable the interrupt */
	FUNC1(dev->irq);

	return 0;
}