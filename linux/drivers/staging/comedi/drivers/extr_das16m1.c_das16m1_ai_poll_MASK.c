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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ DAS16M1_CS_REG ; 
 int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	unsigned long flags;
	unsigned int status;

	/*  prevent race with interrupt handler */
	FUNC3(&dev->spinlock, flags);
	status = FUNC2(dev->iobase + DAS16M1_CS_REG);
	FUNC1(dev, status);
	FUNC4(&dev->spinlock, flags);

	return FUNC0(s);
}