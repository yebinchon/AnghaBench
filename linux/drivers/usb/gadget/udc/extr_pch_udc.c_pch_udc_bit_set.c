
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {int dummy; } ;


 unsigned long pch_udc_readl (struct pch_udc_dev*,unsigned long) ;
 int pch_udc_writel (struct pch_udc_dev*,unsigned long,unsigned long) ;

__attribute__((used)) static inline void pch_udc_bit_set(struct pch_udc_dev *dev,
         unsigned long reg,
         unsigned long bitmask)
{
 pch_udc_writel(dev, pch_udc_readl(dev, reg) | bitmask, reg);
}
