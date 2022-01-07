
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_cursor {int offset; } ;


 int HWC_ADDRESS ;
 int HWC_ADDRESS_ADDRESS_MASK ;
 int HWC_ADDRESS_ENABLE ;
 int poke32 (int ,int) ;

void sm750_hw_cursor_enable(struct lynx_cursor *cursor)
{
 u32 reg;

 reg = (cursor->offset & HWC_ADDRESS_ADDRESS_MASK) | HWC_ADDRESS_ENABLE;
 poke32(HWC_ADDRESS, reg);
}
