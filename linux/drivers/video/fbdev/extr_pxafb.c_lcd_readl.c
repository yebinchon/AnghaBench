
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {scalar_t__ mmio_base; } ;


 unsigned long __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long
lcd_readl(struct pxafb_info *fbi, unsigned int off)
{
 return __raw_readl(fbi->mmio_base + off);
}
