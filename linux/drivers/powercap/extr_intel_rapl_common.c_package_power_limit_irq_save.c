
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_package {int lead_cpu; } ;


 int X86_FEATURE_PLN ;
 int X86_FEATURE_PTS ;
 int boot_cpu_has (int ) ;
 int power_limit_irq_save_cpu ;
 int smp_call_function_single (int ,int ,struct rapl_package*,int) ;

__attribute__((used)) static void package_power_limit_irq_save(struct rapl_package *rp)
{
 if (!boot_cpu_has(X86_FEATURE_PTS) || !boot_cpu_has(X86_FEATURE_PLN))
  return;

 smp_call_function_single(rp->lead_cpu, power_limit_irq_save_cpu, rp, 1);
}
