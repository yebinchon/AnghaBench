
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {scalar_t__ base_addr; } ;


 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void pch_udc_writel(struct pch_udc_dev *dev,
        unsigned long val, unsigned long reg)
{
 iowrite32(val, dev->base_addr + reg);
}
