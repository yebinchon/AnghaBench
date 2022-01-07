
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rapl_package {int power_limit_irq; } ;


 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int PACKAGE_PLN_INT_SAVED ;
 int PACKAGE_THERM_INT_PLN_ENABLE ;
 int X86_FEATURE_PLN ;
 int X86_FEATURE_PTS ;
 int boot_cpu_has (int ) ;
 int rdmsr_safe (int ,int*,int*) ;
 int wrmsr_safe (int ,int,int) ;

__attribute__((used)) static void package_power_limit_irq_restore(struct rapl_package *rp)
{
 u32 l, h;

 if (!boot_cpu_has(X86_FEATURE_PTS) || !boot_cpu_has(X86_FEATURE_PLN))
  return;


 if (!(rp->power_limit_irq & PACKAGE_PLN_INT_SAVED))
  return;

 rdmsr_safe(MSR_IA32_PACKAGE_THERM_INTERRUPT, &l, &h);

 if (rp->power_limit_irq & PACKAGE_THERM_INT_PLN_ENABLE)
  l |= PACKAGE_THERM_INT_PLN_ENABLE;
 else
  l &= ~PACKAGE_THERM_INT_PLN_ENABLE;

 wrmsr_safe(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);
}
