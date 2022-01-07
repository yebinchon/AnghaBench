
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_fbi {int dummy; } ;


 unsigned int EP93XXFB_SWLOCK ;
 int ep93xxfb_writel (struct ep93xx_fbi*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void ep93xxfb_out_locked(struct ep93xx_fbi *fbi,
           unsigned int val, unsigned int reg)
{




 ep93xxfb_writel(fbi, 0xaa, EP93XXFB_SWLOCK);
 ep93xxfb_writel(fbi, val, reg);
}
