
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int MSR_IA32_TEMPERATURE_TARGET ;
 int rdmsr_safe (int ,int*,int*) ;

__attribute__((used)) static int get_tjmax(void)
{
 u32 eax, edx;
 u32 val;
 int err;

 err = rdmsr_safe(MSR_IA32_TEMPERATURE_TARGET, &eax, &edx);
 if (err)
  return err;

 val = (eax >> 16) & 0xff;
 if (val)
  return val;

 return -EINVAL;
}
