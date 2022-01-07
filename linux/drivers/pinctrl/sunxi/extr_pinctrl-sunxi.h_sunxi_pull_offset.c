
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int PULL_PINS_BITS ;
 int PULL_PINS_PER_REG ;

__attribute__((used)) static inline u32 sunxi_pull_offset(u16 pin)
{
 u32 pin_num = pin % PULL_PINS_PER_REG;
 return pin_num * PULL_PINS_BITS;
}
