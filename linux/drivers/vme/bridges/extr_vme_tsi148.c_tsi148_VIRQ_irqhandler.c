
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_bridge {struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; } ;


 scalar_t__* TSI148_LCSR_VIACK ;
 int ioread8 (scalar_t__) ;
 int vme_irq_handler (struct vme_bridge*,int,int) ;

__attribute__((used)) static u32 tsi148_VIRQ_irqhandler(struct vme_bridge *tsi148_bridge,
 u32 stat)
{
 int vec, i, serviced = 0;
 struct tsi148_driver *bridge;

 bridge = tsi148_bridge->driver_priv;

 for (i = 7; i > 0; i--) {
  if (stat & (1 << i)) {





   vec = ioread8(bridge->base + TSI148_LCSR_VIACK[i] + 3);

   vme_irq_handler(tsi148_bridge, i, vec);

   serviced |= (1 << i);
  }
 }

 return serviced;
}
