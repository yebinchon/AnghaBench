
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_package {int cpumask; } ;


 scalar_t__ IS_ERR (struct rapl_package*) ;
 int PTR_ERR (struct rapl_package*) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 struct rapl_package* rapl_add_package (unsigned int,int *) ;
 struct rapl_package* rapl_find_package_domain (unsigned int,int *) ;
 int rapl_msr_priv ;

__attribute__((used)) static int rapl_cpu_online(unsigned int cpu)
{
 struct rapl_package *rp;

 rp = rapl_find_package_domain(cpu, &rapl_msr_priv);
 if (!rp) {
  rp = rapl_add_package(cpu, &rapl_msr_priv);
  if (IS_ERR(rp))
   return PTR_ERR(rp);
 }
 cpumask_set_cpu(cpu, &rp->cpumask);
 return 0;
}
