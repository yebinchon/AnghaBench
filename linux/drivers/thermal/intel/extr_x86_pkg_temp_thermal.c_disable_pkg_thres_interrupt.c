
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int THERM_INT_THRESHOLD0_ENABLE ;
 int THERM_INT_THRESHOLD1_ENABLE ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static inline void disable_pkg_thres_interrupt(void)
{
 u32 l, h;

 rdmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);

 l &= ~(THERM_INT_THRESHOLD0_ENABLE | THERM_INT_THRESHOLD1_ENABLE);
 wrmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);
}
