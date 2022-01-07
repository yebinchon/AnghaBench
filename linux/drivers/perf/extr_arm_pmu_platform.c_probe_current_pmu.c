
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_probe_info {int (* init ) (struct arm_pmu*) ;unsigned int mask; unsigned int cpuid; } ;
struct arm_pmu {int dummy; } ;


 int ENODEV ;
 int get_cpu () ;
 int pr_info (char*,int) ;
 int put_cpu () ;
 unsigned int read_cpuid_id () ;
 int stub1 (struct arm_pmu*) ;

__attribute__((used)) static int probe_current_pmu(struct arm_pmu *pmu,
        const struct pmu_probe_info *info)
{
 int cpu = get_cpu();
 unsigned int cpuid = read_cpuid_id();
 int ret = -ENODEV;

 pr_info("probing PMU on CPU %d\n", cpu);

 for (; info->init != ((void*)0); info++) {
  if ((cpuid & info->mask) != info->cpuid)
   continue;
  ret = info->init(pmu);
  break;
 }

 put_cpu();
 return ret;
}
