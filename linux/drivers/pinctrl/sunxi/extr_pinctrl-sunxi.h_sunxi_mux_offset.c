
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int MUX_PINS_BITS ;
 int MUX_PINS_PER_REG ;

__attribute__((used)) static inline u32 sunxi_mux_offset(u16 pin)
{
 u32 pin_num = pin % MUX_PINS_PER_REG;
 return pin_num * MUX_PINS_BITS;
}
