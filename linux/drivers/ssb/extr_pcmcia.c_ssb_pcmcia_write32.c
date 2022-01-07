
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int bar_lock; scalar_t__ mmio; } ;


 scalar_t__ likely (int) ;
 int select_core_and_segment (struct ssb_device*,scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void ssb_pcmcia_write32(struct ssb_device *dev, u16 offset, u32 value)
{
 struct ssb_bus *bus = dev->bus;
 unsigned long flags;
 int err;

 spin_lock_irqsave(&bus->bar_lock, flags);
 err = select_core_and_segment(dev, &offset);
 if (likely(!err)) {
  writew((value & 0x0000FFFF), bus->mmio + offset);
  writew(((value & 0xFFFF0000) >> 16), bus->mmio + offset + 2);
 }
 spin_unlock_irqrestore(&bus->bar_lock, flags);
}
