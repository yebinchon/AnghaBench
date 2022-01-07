
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_PMBLIMITR_EL1 ;
 int SYS_PMSCR_EL1 ;
 int dsb (int ) ;
 int isb () ;
 int nsh ;
 int psb_csync () ;
 int write_sysreg_s (int ,int ) ;

__attribute__((used)) static void arm_spe_pmu_disable_and_drain_local(void)
{

 write_sysreg_s(0, SYS_PMSCR_EL1);
 isb();


 psb_csync();
 dsb(nsh);


 write_sysreg_s(0, SYS_PMBLIMITR_EL1);
 isb();
}
