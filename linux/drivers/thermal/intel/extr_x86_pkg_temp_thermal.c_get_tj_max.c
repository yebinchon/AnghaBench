
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int MSR_IA32_TEMPERATURE_TARGET ;
 int rdmsr_safe_on_cpu (int,int ,int*,int*) ;

__attribute__((used)) static int get_tj_max(int cpu, u32 *tj_max)
{
 u32 eax, edx, val;
 int err;

 err = rdmsr_safe_on_cpu(cpu, MSR_IA32_TEMPERATURE_TARGET, &eax, &edx);
 if (err)
  return err;

 val = (eax >> 16) & 0xff;
 *tj_max = val * 1000;

 return val ? 0 : -EINVAL;
}
