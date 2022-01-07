
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int nr_cpu_ids ;
 int of_cpu_node_to_id (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int pmu_has_irq_affinity (struct device_node*) ;
 int pr_warn (char*,int,...) ;

__attribute__((used)) static int pmu_parse_irq_affinity(struct device_node *node, int i)
{
 struct device_node *dn;
 int cpu;






 if (!pmu_has_irq_affinity(node))
  return i;

 dn = of_parse_phandle(node, "interrupt-affinity", i);
 if (!dn) {
  pr_warn("failed to parse interrupt-affinity[%d] for %pOFn\n",
   i, node);
  return -EINVAL;
 }

 cpu = of_cpu_node_to_id(dn);
 if (cpu < 0) {
  pr_warn("failed to find logical CPU for %pOFn\n", dn);
  cpu = nr_cpu_ids;
 }

 of_node_put(dn);

 return cpu;
}
