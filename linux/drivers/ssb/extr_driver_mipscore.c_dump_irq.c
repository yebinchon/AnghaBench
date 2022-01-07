
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;
struct ssb_bus {int nr_devices; struct ssb_device* devices; } ;


 int print_irq (struct ssb_device*,int ) ;
 int ssb_mips_irq (struct ssb_device*) ;

__attribute__((used)) static void dump_irq(struct ssb_bus *bus)
{
 int i;
 for (i = 0; i < bus->nr_devices; i++) {
  struct ssb_device *dev;
  dev = &(bus->devices[i]);
  print_irq(dev, ssb_mips_irq(dev));
 }
}
