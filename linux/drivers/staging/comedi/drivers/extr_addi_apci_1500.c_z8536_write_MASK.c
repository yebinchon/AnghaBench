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
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
			unsigned int val, unsigned int reg)
{
	unsigned long flags;

	FUNC1(&dev->spinlock, flags);
	FUNC0(reg, dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC0(val, dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC2(&dev->spinlock, flags);
}