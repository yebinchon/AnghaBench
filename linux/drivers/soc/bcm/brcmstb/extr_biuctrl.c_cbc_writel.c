
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ cpubiuctrl_base ;
 int* cpubiuctrl_regs ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void cbc_writel(u32 val, int reg)
{
 int offset = cpubiuctrl_regs[reg];

 if (offset == -1)
  return;

 writel(val, cpubiuctrl_base + offset);
}
