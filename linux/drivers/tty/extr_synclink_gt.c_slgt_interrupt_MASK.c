#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ count; } ;
struct slgt_info {int irq_occurred; unsigned int port_count; int bh_requested; int /*<<< orphan*/  irq_level; int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  device_name; int /*<<< orphan*/  bh_running; scalar_t__ pending_bh; scalar_t__ netcount; TYPE_1__ port; struct slgt_info** port_array; scalar_t__ gpio_present; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int BIT16 ; 
 unsigned int BIT17 ; 
 unsigned int BIT8 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GSR ; 
 int /*<<< orphan*/  IOSR ; 
 int /*<<< orphan*/  IOVR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int FUNC5 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct slgt_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int dummy, void *dev_id)
{
	struct slgt_info *info = dev_id;
	unsigned int gsr;
	unsigned int i;

	FUNC0(("slgt_interrupt irq=%d entry\n", info->irq_level));

	while((gsr = FUNC5(info, GSR) & 0xffffff00)) {
		FUNC0(("%s gsr=%08x\n", info->device_name, gsr));
		info->irq_occurred = true;
		for(i=0; i < info->port_count ; i++) {
			if (info->port_array[i] == NULL)
				continue;
			FUNC7(&info->port_array[i]->lock);
			if (gsr & (BIT8 << i))
				FUNC3(info->port_array[i]);
			if (gsr & (BIT16 << (i*2)))
				FUNC2(info->port_array[i]);
			if (gsr & (BIT17 << (i*2)))
				FUNC4(info->port_array[i]);
			FUNC8(&info->port_array[i]->lock);
		}
	}

	if (info->gpio_present) {
		unsigned int state;
		unsigned int changed;
		FUNC7(&info->lock);
		while ((changed = FUNC5(info, IOSR)) != 0) {
			FUNC0(("%s iosr=%08x\n", info->device_name, changed));
			/* read latched state of GPIO signals */
			state = FUNC5(info, IOVR);
			/* clear pending GPIO interrupt bits */
			FUNC9(info, IOSR, changed);
			for (i=0 ; i < info->port_count ; i++) {
				if (info->port_array[i] != NULL)
					FUNC1(info->port_array[i], changed, state);
			}
		}
		FUNC8(&info->lock);
	}

	for(i=0; i < info->port_count ; i++) {
		struct slgt_info *port = info->port_array[i];
		if (port == NULL)
			continue;
		FUNC7(&port->lock);
		if ((port->port.count || port->netcount) &&
		    port->pending_bh && !port->bh_running &&
		    !port->bh_requested) {
			FUNC0(("%s bh queued\n", port->device_name));
			FUNC6(&port->task);
			port->bh_requested = true;
		}
		FUNC8(&port->lock);
	}

	FUNC0(("slgt_interrupt irq=%d exit\n", info->irq_level));
	return IRQ_HANDLED;
}