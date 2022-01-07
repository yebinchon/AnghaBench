
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ mmio750 ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 peek32(u32 addr)
{
 return readl(addr + mmio750);
}
