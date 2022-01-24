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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,unsigned long,char const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(unsigned int evtchn,
			      irq_handler_t handler,
			      unsigned long irqflags,
			      const char *devname, void *dev_id)
{
	int irq, retval;

	irq = FUNC0(evtchn);
	if (irq < 0)
		return irq;
	retval = FUNC1(irq, handler, irqflags, devname, dev_id);
	if (retval != 0) {
		FUNC2(irq);
		return retval;
	}

	return irq;
}