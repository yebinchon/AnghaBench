
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pinctrl {int base; } ;


 int readl_relaxed (int) ;

__attribute__((used)) static u32 owl_read_field(struct owl_pinctrl *pctrl, u32 reg,
    u32 bit, u32 width)
{
 u32 tmp, mask;

 tmp = readl_relaxed(pctrl->base + reg);
 mask = (1 << width) - 1;

 return (tmp >> bit) & mask;
}
