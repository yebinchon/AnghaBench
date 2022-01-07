
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * flowctrl_offset_cpu_csr ;
 void flowctrl_update (int ,int ) ;

void flowctrl_write_cpu_csr(unsigned int cpuid, u32 value)
{
 return flowctrl_update(flowctrl_offset_cpu_csr[cpuid], value);
}
