
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_udc_ep {scalar_t__ offset_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void pch_udc_ep_writel(struct pch_udc_ep *ep,
        unsigned long val, unsigned long reg)
{
 iowrite32(val, ep->dev->base_addr + ep->offset_addr + reg);
}
