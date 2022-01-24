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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONV_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	unsigned long irq_flags;

	FUNC1(&dev->spinlock, irq_flags);
	/* disable hardware triggering of conversions */
	FUNC0(dev, 0x0, CONV_CONTROL);
	FUNC2(&dev->spinlock, irq_flags);
}