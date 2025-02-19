
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pinctrl {int base; } ;


 int owl_update_bits (int,int,int) ;

__attribute__((used)) static void owl_write_field(struct owl_pinctrl *pctrl, u32 reg, u32 arg,
    u32 bit, u32 width)
{
 u32 mask;

 mask = (1 << width) - 1;
 mask = mask << bit;

 owl_update_bits(pctrl->base + reg, mask, (arg << bit));
}
