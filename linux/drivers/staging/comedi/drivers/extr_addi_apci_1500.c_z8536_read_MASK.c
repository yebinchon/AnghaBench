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
 scalar_t__ APCI1500_Z8536_CTRL_REG ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev, unsigned int reg)
{
	unsigned long flags;
	unsigned int val;

	FUNC2(&dev->spinlock, flags);
	FUNC1(reg, dev->iobase + APCI1500_Z8536_CTRL_REG);
	val = FUNC0(dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC3(&dev->spinlock, flags);

	return val;
}