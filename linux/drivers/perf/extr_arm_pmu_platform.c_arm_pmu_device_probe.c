
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_probe_info {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int (* data ) (struct arm_pmu*) ;} ;
struct device_node {int dummy; } ;
struct arm_pmu {int secure_access; int supported_cpus; struct platform_device* plat_device; } ;
typedef int (* armpmu_init_fn ) (struct arm_pmu*) ;


 int CONFIG_ARM64 ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ENABLED (int ) ;
 struct arm_pmu* armpmu_alloc () ;
 int armpmu_free (struct arm_pmu*) ;
 int armpmu_free_irqs (struct arm_pmu*) ;
 int armpmu_register (struct arm_pmu*) ;
 int armpmu_request_irqs (struct arm_pmu*) ;
 int cpumask_setall (int *) ;
 struct of_device_id* of_match_node (struct of_device_id const*,struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int pmu_parse_irqs (struct arm_pmu*) ;
 int pr_info (char*,struct device_node*) ;
 int pr_warn (char*) ;
 int probe_current_pmu (struct arm_pmu*,struct pmu_probe_info const*) ;

int arm_pmu_device_probe(struct platform_device *pdev,
    const struct of_device_id *of_table,
    const struct pmu_probe_info *probe_table)
{
 const struct of_device_id *of_id;
 armpmu_init_fn init_fn;
 struct device_node *node = pdev->dev.of_node;
 struct arm_pmu *pmu;
 int ret = -ENODEV;

 pmu = armpmu_alloc();
 if (!pmu)
  return -ENOMEM;

 pmu->plat_device = pdev;

 ret = pmu_parse_irqs(pmu);
 if (ret)
  goto out_free;

 if (node && (of_id = of_match_node(of_table, pdev->dev.of_node))) {
  init_fn = of_id->data;

  pmu->secure_access = of_property_read_bool(pdev->dev.of_node,
          "secure-reg-access");


  if (IS_ENABLED(CONFIG_ARM64) && pmu->secure_access) {
   pr_warn("ignoring \"secure-reg-access\" property for arm64\n");
   pmu->secure_access = 0;
  }

  ret = init_fn(pmu);
 } else if (probe_table) {
  cpumask_setall(&pmu->supported_cpus);
  ret = probe_current_pmu(pmu, probe_table);
 }

 if (ret) {
  pr_info("%pOF: failed to probe PMU!\n", node);
  goto out_free;
 }

 ret = armpmu_request_irqs(pmu);
 if (ret)
  goto out_free_irqs;

 ret = armpmu_register(pmu);
 if (ret)
  goto out_free;

 return 0;

out_free_irqs:
 armpmu_free_irqs(pmu);
out_free:
 pr_info("%pOF: failed to register PMU devices!\n", node);
 armpmu_free(pmu);
 return ret;
}
