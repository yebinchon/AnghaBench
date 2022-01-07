
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_udc_ep {scalar_t__ offset_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 pch_udc_ep_readl(struct pch_udc_ep *ep, unsigned long reg)
{
 return ioread32(ep->dev->base_addr + ep->offset_addr + reg);
}
