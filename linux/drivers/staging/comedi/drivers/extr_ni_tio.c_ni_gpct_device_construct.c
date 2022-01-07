
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_tables {int dummy; } ;
struct ni_gpct_device {void (* write ) (struct ni_gpct*,unsigned int,int) ;unsigned int (* read ) (struct ni_gpct*,int) ;int variant; unsigned int num_counters; unsigned int num_chips; unsigned int chip_index; unsigned int counter_index; int lock; struct ni_gpct_device* counter_dev; struct ni_gpct_device* counters; struct ni_gpct_device* regs; int regs_lock; struct ni_route_tables const* routing_tables; struct comedi_device* dev; } ;
struct ni_gpct {void (* write ) (struct ni_gpct*,unsigned int,int) ;unsigned int (* read ) (struct ni_gpct*,int) ;int variant; unsigned int num_counters; unsigned int num_chips; unsigned int chip_index; unsigned int counter_index; int lock; struct ni_gpct* counter_dev; struct ni_gpct* counters; struct ni_gpct* regs; int regs_lock; struct ni_route_tables const* routing_tables; struct comedi_device* dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int GFP_KERNEL ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct ni_gpct_device*) ;
 struct ni_gpct_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct ni_gpct_device *
ni_gpct_device_construct(struct comedi_device *dev,
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
  return ((void*)0);

 counter_dev = kzalloc(sizeof(*counter_dev), GFP_KERNEL);
 if (!counter_dev)
  return ((void*)0);

 counter_dev->dev = dev;
 counter_dev->write = write;
 counter_dev->read = read;
 counter_dev->variant = variant;
 counter_dev->routing_tables = routing_tables;

 spin_lock_init(&counter_dev->regs_lock);

 counter_dev->num_counters = num_counters;
 counter_dev->num_chips = DIV_ROUND_UP(num_counters, counters_per_chip);

 counter_dev->counters = kcalloc(num_counters, sizeof(*counter),
     GFP_KERNEL);
 counter_dev->regs = kcalloc(counter_dev->num_chips,
        sizeof(*counter_dev->regs), GFP_KERNEL);
 if (!counter_dev->regs || !counter_dev->counters) {
  kfree(counter_dev->regs);
  kfree(counter_dev->counters);
  kfree(counter_dev);
  return ((void*)0);
 }

 for (i = 0; i < num_counters; ++i) {
  counter = &counter_dev->counters[i];
  counter->counter_dev = counter_dev;
  counter->chip_index = i / counters_per_chip;
  counter->counter_index = i % counters_per_chip;
  spin_lock_init(&counter->lock);
 }

 return counter_dev;
}
