
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_pinctrl {unsigned int base; } ;


 int readl (unsigned int) ;

__attribute__((used)) static inline u32 bcm2835_gpio_rd(struct bcm2835_pinctrl *pc, unsigned reg)
{
 return readl(pc->base + reg);
}
