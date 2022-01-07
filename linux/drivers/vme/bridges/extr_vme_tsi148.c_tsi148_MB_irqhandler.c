
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;


 scalar_t__* TSI148_GCSR_MBOX ;
 int* TSI148_LCSR_INTC_MBC ;
 int* TSI148_LCSR_INTS_MBS ;
 int dev_err (int ,char*,int,int) ;
 int ioread32be (scalar_t__) ;

__attribute__((used)) static u32 tsi148_MB_irqhandler(struct vme_bridge *tsi148_bridge, u32 stat)
{
 int i;
 u32 val;
 u32 serviced = 0;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;

 for (i = 0; i < 4; i++) {
  if (stat & TSI148_LCSR_INTS_MBS[i]) {
   val = ioread32be(bridge->base + TSI148_GCSR_MBOX[i]);
   dev_err(tsi148_bridge->parent, "VME Mailbox %d received"
    ": 0x%x\n", i, val);
   serviced |= TSI148_LCSR_INTC_MBC[i];
  }
 }

 return serviced;
}
