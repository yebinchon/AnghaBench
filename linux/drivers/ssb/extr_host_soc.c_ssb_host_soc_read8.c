
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ssb_device {int core_index; struct ssb_bus* bus; } ;
struct ssb_bus {scalar_t__ mmio; } ;


 int SSB_CORE_SIZE ;
 int readb (scalar_t__) ;

__attribute__((used)) static u8 ssb_host_soc_read8(struct ssb_device *dev, u16 offset)
{
 struct ssb_bus *bus = dev->bus;

 offset += dev->core_index * SSB_CORE_SIZE;
 return readb(bus->mmio + offset);
}
