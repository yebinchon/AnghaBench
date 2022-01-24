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
struct ni_route_tables {int dummy; } ;
struct ni_gpct_device {void (* write ) (struct ni_gpct*,unsigned int,int) ;unsigned int (* read ) (struct ni_gpct*,int) ;int variant; unsigned int num_counters; unsigned int num_chips; unsigned int chip_index; unsigned int counter_index; int /*<<< orphan*/  lock; struct ni_gpct_device* counter_dev; struct ni_gpct_device* counters; struct ni_gpct_device* regs; int /*<<< orphan*/  regs_lock; struct ni_route_tables const* routing_tables; struct comedi_device* dev; } ;
struct ni_gpct {void (* write ) (struct ni_gpct*,unsigned int,int) ;unsigned int (* read ) (struct ni_gpct*,int) ;int variant; unsigned int num_counters; unsigned int num_chips; unsigned int chip_index; unsigned int counter_index; int /*<<< orphan*/  lock; struct ni_gpct* counter_dev; struct ni_gpct* counters; struct ni_gpct* regs; int /*<<< orphan*/  regs_lock; struct ni_route_tables const* routing_tables; struct comedi_device* dev; } ;
struct comedi_device {int dummy; } ;
typedef  enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct_device*) ; 
 struct ni_gpct_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct ni_gpct_device *
FUNC5(struct comedi_device *dev,
			 void (*write)(struct ni_gpct *counter,
				       unsigned int value,
				       enum ni_gpct_register reg),
			 unsigned int (*read)(struct ni_gpct *counter,
					      enum ni_gpct_register reg),
			 enum ni_gpct_variant variant,
			 unsigned int num_counters,
			 unsigned int counters_per_chip,
			 const struct ni_route_tables *routing_tables)
{
	struct ni_gpct_device *counter_dev;
	struct ni_gpct *counter;
	unsigned int i;

	if (num_counters == 0 || counters_per_chip == 0)
		return NULL;

	counter_dev = FUNC3(sizeof(*counter_dev), GFP_KERNEL);
	if (!counter_dev)
		return NULL;

	counter_dev->dev = dev;
	counter_dev->write = write;
	counter_dev->read = read;
	counter_dev->variant = variant;
	counter_dev->routing_tables = routing_tables;

	FUNC4(&counter_dev->regs_lock);

	counter_dev->num_counters = num_counters;
	counter_dev->num_chips = FUNC0(num_counters, counters_per_chip);

	counter_dev->counters = FUNC1(num_counters, sizeof(*counter),
					GFP_KERNEL);
	counter_dev->regs = FUNC1(counter_dev->num_chips,
				    sizeof(*counter_dev->regs), GFP_KERNEL);
	if (!counter_dev->regs || !counter_dev->counters) {
		FUNC2(counter_dev->regs);
		FUNC2(counter_dev->counters);
		FUNC2(counter_dev);
		return NULL;
	}

	for (i = 0; i < num_counters; ++i) {
		counter = &counter_dev->counters[i];
		counter->counter_dev = counter_dev;
		counter->chip_index = i / counters_per_chip;
		counter->counter_index = i % counters_per_chip;
		FUNC4(&counter->lock);
	}

	return counter_dev;
}