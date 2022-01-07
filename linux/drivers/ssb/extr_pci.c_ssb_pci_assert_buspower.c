
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int power_warn_count; int powered_up; } ;


 int ENODEV ;
 int dump_stack () ;
 scalar_t__ likely (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ssb_pci_assert_buspower(struct ssb_bus *bus)
{
 if (likely(bus->powered_up))
  return 0;

 pr_err("FATAL ERROR: Bus powered down while accessing PCI MMIO space\n");
 if (bus->power_warn_count <= 10) {
  bus->power_warn_count++;
  dump_stack();
 }

 return -ENODEV;
}
