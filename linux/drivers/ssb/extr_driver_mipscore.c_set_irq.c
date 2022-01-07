
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int coreid; } ;
struct ssb_device {unsigned int irq; TYPE_2__ id; int dev; struct ssb_bus* bus; } ;
struct TYPE_3__ {struct ssb_device* dev; } ;
struct ssb_bus {TYPE_1__ mipscore; } ;


 int BUG_ON (int) ;
 int SSB_INTVEC ;
 int SSB_IPSFLAG ;
 int clear_irq (struct ssb_bus*,unsigned int) ;
 int dev_dbg (int ,char*,int ,unsigned int,unsigned int) ;
 struct ssb_device* find_device (struct ssb_device*,int) ;
 int* ipsflag_irq_mask ;
 int* ipsflag_irq_shift ;
 int ssb_irqflag (struct ssb_device*) ;
 unsigned int ssb_mips_irq (struct ssb_device*) ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int) ;

__attribute__((used)) static void set_irq(struct ssb_device *dev, unsigned int irq)
{
 unsigned int oldirq = ssb_mips_irq(dev);
 struct ssb_bus *bus = dev->bus;
 struct ssb_device *mdev = bus->mipscore.dev;
 u32 irqflag = ssb_irqflag(dev);

 BUG_ON(oldirq == 6);

 dev->irq = irq + 2;


 if (oldirq == 0)
  ssb_write32(mdev, SSB_INTVEC, (~(1 << irqflag) & ssb_read32(mdev, SSB_INTVEC)));
 else if (oldirq != 5)
  clear_irq(bus, oldirq);


 if (irq == 0) {
  ssb_write32(mdev, SSB_INTVEC, ((1 << irqflag) | ssb_read32(mdev, SSB_INTVEC)));
 } else {
  u32 ipsflag = ssb_read32(mdev, SSB_IPSFLAG);
  if ((ipsflag & ipsflag_irq_mask[irq]) != ipsflag_irq_mask[irq]) {
   u32 oldipsflag = (ipsflag & ipsflag_irq_mask[irq]) >> ipsflag_irq_shift[irq];
   struct ssb_device *olddev = find_device(dev, oldipsflag);
   if (olddev)
    set_irq(olddev, 0);
  }
  irqflag <<= ipsflag_irq_shift[irq];
  irqflag |= (ipsflag & ~ipsflag_irq_mask[irq]);
  ssb_write32(mdev, SSB_IPSFLAG, irqflag);
 }
 dev_dbg(dev->dev, "set_irq: core 0x%04x, irq %d => %d\n",
  dev->id.coreid, oldirq+2, irq+2);
}
