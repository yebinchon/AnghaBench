
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_cooling_device {int dummy; } ;
struct device_node {int dummy; } ;
struct cpufreq_policy {int cpu; } ;


 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int PTR_ERR (struct thermal_cooling_device*) ;
 struct thermal_cooling_device* __cpufreq_cooling_register (struct device_node*,struct cpufreq_policy*,int ) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_get_cpu_node (int ,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int pr_err (char*,int ,...) ;

struct thermal_cooling_device *
of_cpufreq_cooling_register(struct cpufreq_policy *policy)
{
 struct device_node *np = of_get_cpu_node(policy->cpu, ((void*)0));
 struct thermal_cooling_device *cdev = ((void*)0);
 u32 capacitance = 0;

 if (!np) {
  pr_err("cpu_cooling: OF node not available for cpu%d\n",
         policy->cpu);
  return ((void*)0);
 }

 if (of_find_property(np, "#cooling-cells", ((void*)0))) {
  of_property_read_u32(np, "dynamic-power-coefficient",
         &capacitance);

  cdev = __cpufreq_cooling_register(np, policy, capacitance);
  if (IS_ERR(cdev)) {
   pr_err("cpu_cooling: cpu%d failed to register as cooling device: %ld\n",
          policy->cpu, PTR_ERR(cdev));
   cdev = ((void*)0);
  }
 }

 of_node_put(np);
 return cdev;
}
