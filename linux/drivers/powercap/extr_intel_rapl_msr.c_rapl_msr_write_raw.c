
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_action {int err; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int rapl_msr_update_func ;
 int smp_call_function_single (int,int ,struct reg_action*,int) ;

__attribute__((used)) static int rapl_msr_write_raw(int cpu, struct reg_action *ra)
{
 int ret;

 ret = smp_call_function_single(cpu, rapl_msr_update_func, ra, 1);
 if (WARN_ON_ONCE(ret))
  return ret;

 return ra->err;
}
