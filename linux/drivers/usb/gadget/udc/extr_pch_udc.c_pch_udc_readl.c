
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_dev {scalar_t__ base_addr; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 pch_udc_readl(struct pch_udc_dev *dev, unsigned long reg)
{
 return ioread32(dev->base_addr + reg);
}
