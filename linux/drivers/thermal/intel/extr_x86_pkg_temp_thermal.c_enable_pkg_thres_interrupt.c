
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int THERM_INT_THRESHOLD0_ENABLE ;
 int THERM_INT_THRESHOLD1_ENABLE ;
 int THERM_MASK_THRESHOLD0 ;
 int THERM_MASK_THRESHOLD1 ;
 int THERM_SHIFT_THRESHOLD0 ;
 int THERM_SHIFT_THRESHOLD1 ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static inline void enable_pkg_thres_interrupt(void)
{
 u8 thres_0, thres_1;
 u32 l, h;

 rdmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);

 thres_0 = (l & THERM_MASK_THRESHOLD0) >> THERM_SHIFT_THRESHOLD0;
 thres_1 = (l & THERM_MASK_THRESHOLD1) >> THERM_SHIFT_THRESHOLD1;
 if (thres_0)
  l |= THERM_INT_THRESHOLD0_ENABLE;
 if (thres_1)
  l |= THERM_INT_THRESHOLD1_ENABLE;
 wrmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT, l, h);
}
