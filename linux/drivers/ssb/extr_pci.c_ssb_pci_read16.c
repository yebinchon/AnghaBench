
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int mmio; struct ssb_device* mapped_device; } ;


 int ioread16 (int) ;
 int ssb_pci_assert_buspower (struct ssb_bus*) ;
 int ssb_pci_switch_core (struct ssb_bus*,struct ssb_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 ssb_pci_read16(struct ssb_device *dev, u16 offset)
{
 struct ssb_bus *bus = dev->bus;

 if (unlikely(ssb_pci_assert_buspower(bus)))
  return 0xFFFF;
 if (unlikely(bus->mapped_device != dev)) {
  if (unlikely(ssb_pci_switch_core(bus, dev)))
   return 0xFFFF;
 }
 return ioread16(bus->mmio + offset);
}
