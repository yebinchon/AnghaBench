
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reg_action {int mask; int value; int reg; } ;


 int EIO ;
 int pr_debug (char*,int ,int) ;
 scalar_t__ rdmsrl_safe_on_cpu (int,int ,int *) ;

__attribute__((used)) static int rapl_msr_read_raw(int cpu, struct reg_action *ra)
{
 u32 msr = (u32)ra->reg;

 if (rdmsrl_safe_on_cpu(cpu, msr, &ra->value)) {
  pr_debug("failed to read msr 0x%x on cpu %d\n", msr, cpu);
  return -EIO;
 }
 ra->value &= ra->mask;
 return 0;
}
