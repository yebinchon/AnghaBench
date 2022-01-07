
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ mmio750 ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void poke32(u32 addr, u32 data)
{
 writel(data, addr + mmio750);
}
