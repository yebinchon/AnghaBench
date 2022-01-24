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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	unsigned long flags;

	/*
	 * Protects the indirect addressing selected by DAS1800_SELECT
	 * in das1800_ai_handler() also prevents race with das1800_interrupt().
	 */
	FUNC2(&dev->spinlock, flags);

	FUNC1(dev);

	FUNC3(&dev->spinlock, flags);

	return FUNC0(s);
}