
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rapl_package {int power_limit_irq; } ;


 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int PACKAGE_PLN_INT_SAVED ;
 int PACKAGE_THERM_INT_PLN_ENABLE ;
 int rdmsr_safe (int ,int*,int*) ;
 int wrmsr_safe (int ,int,int) ;

__attribute__((used)) static void power_limit_irq_save_cpu(void *info)
{
 u32 l, h = 0;
 struct rapl_package *rp = (struct rapl_package *)info;


 rdmsr_safe(MSR_IA32_PACKAGE_THERM_INTERRUPT, &l, &h);
 if (!(rp->power_limit_irq & PACKAGE_PLN_INT_SAVED)) {
  rp->power_limit_irq = l & PACKAGE_THERM_INT_PLN_ENABLE;
  rp->power_limit_irq |= PACKAGE_PLN_INT_SAVED;
 }
 l &= ~PACKAGE_THERM_INT_PLN_ENABLE;
 wrmsr_safe(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);
}
