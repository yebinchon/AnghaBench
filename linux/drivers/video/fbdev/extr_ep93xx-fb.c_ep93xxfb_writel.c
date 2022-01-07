
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_fbi {scalar_t__ mmio_base; } ;


 int __raw_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void ep93xxfb_writel(struct ep93xx_fbi *fbi,
       unsigned int val, unsigned int off)
{
 __raw_writel(val, fbi->mmio_base + off);
}
