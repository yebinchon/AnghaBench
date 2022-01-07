
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct reg_action {scalar_t__ err; int value; int mask; int reg; } ;


 scalar_t__ rdmsrl_safe (int ,int *) ;
 scalar_t__ wrmsrl_safe (int ,int ) ;

__attribute__((used)) static void rapl_msr_update_func(void *info)
{
 struct reg_action *ra = info;
 u32 msr = (u32)ra->reg;
 u64 val;

 ra->err = rdmsrl_safe(msr, &val);
 if (ra->err)
  return;

 val &= ~ra->mask;
 val |= ra->value;

 ra->err = wrmsrl_safe(msr, val);
}
