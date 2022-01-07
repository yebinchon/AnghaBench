
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum sys_powerdown { ____Placeholder_sys_powerdown } sys_powerdown ;


 int EXYNOS_IROM_DATA2 ;
 int MPIDR_AFFINITY_LEVEL (int ,int) ;
 int pmu_raw_writel (int ,int ) ;
 int read_cpuid_mpidr () ;

__attribute__((used)) static void exynos5420_powerdown_conf(enum sys_powerdown mode)
{
 u32 this_cluster;

 this_cluster = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 1);





 pmu_raw_writel(this_cluster, EXYNOS_IROM_DATA2);
}
