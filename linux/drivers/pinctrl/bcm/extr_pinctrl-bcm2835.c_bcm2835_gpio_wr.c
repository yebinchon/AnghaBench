
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_pinctrl {unsigned int base; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void bcm2835_gpio_wr(struct bcm2835_pinctrl *pc, unsigned reg,
  u32 val)
{
 writel(val, pc->base + reg);
}
