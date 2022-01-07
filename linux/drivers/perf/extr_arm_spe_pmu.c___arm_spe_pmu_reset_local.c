
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_PMBPTR_EL1 ;
 int SYS_PMBSR_EL1 ;
 int arm_spe_pmu_disable_and_drain_local () ;
 int isb () ;
 int write_sysreg_s (int ,int ) ;

__attribute__((used)) static void __arm_spe_pmu_reset_local(void)
{




 arm_spe_pmu_disable_and_drain_local();


 write_sysreg_s(0, SYS_PMBPTR_EL1);
 isb();


 write_sysreg_s(0, SYS_PMBSR_EL1);
 isb();
}
