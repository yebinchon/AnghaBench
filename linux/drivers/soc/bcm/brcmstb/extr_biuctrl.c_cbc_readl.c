
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ cpubiuctrl_base ;
 int* cpubiuctrl_regs ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 cbc_readl(int reg)
{
 int offset = cpubiuctrl_regs[reg];

 if (offset == -1)
  return (u32)-1;

 return readl_relaxed(cpubiuctrl_base + offset);
}
