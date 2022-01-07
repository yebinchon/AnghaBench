
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int cpumask_t ;


 int ENODEV ;
 int cpumask_set_cpu (int,int *) ;
 int of_count_phandle_with_args (struct device_node*,char*,int *) ;
 int of_cpu_node_to_id (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

__attribute__((used)) static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
{
 int i = 0, n, cpu;
 struct device_node *cpu_node;

 n = of_count_phandle_with_args(dev, "cpus", ((void*)0));
 if (n <= 0)
  return -ENODEV;
 for (; i < n; i++) {
  cpu_node = of_parse_phandle(dev, "cpus", i);
  if (!cpu_node)
   break;
  cpu = of_cpu_node_to_id(cpu_node);
  of_node_put(cpu_node);





  if (cpu < 0)
   continue;
  cpumask_set_cpu(cpu, mask);
 }
 return 0;
}
