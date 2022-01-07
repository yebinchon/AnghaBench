
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int pmu_lock; } ;
struct cci_pmu {int* irqs; TYPE_2__* model; int cpu; int active_events; int reserve_mutex; TYPE_1__ hw_events; scalar_t__ nr_irqs; struct cci_pmu* base; } ;
struct TYPE_4__ {int name; } ;


 int CCI_PMU_MAX_HW_CNTRS (TYPE_2__*) ;
 int CPUHP_AP_PERF_ARM_CCI_ONLINE ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct cci_pmu*) ;
 int PTR_ERR (struct cci_pmu*) ;
 int atomic_set (int *,int ) ;
 struct cci_pmu* cci_pmu_alloc (int *) ;
 int cci_pmu_init (struct cci_pmu*,struct platform_device*) ;
 int cci_pmu_offline_cpu ;
 int cpuhp_remove_state (int ) ;
 int cpuhp_setup_state_nocalls (int ,char*,int *,int ) ;
 int dev_warn (int *,char*,int,int) ;
 struct cci_pmu* devm_ioremap_resource (int *,struct resource*) ;
 struct cci_pmu* g_cci_pmu ;
 scalar_t__ is_duplicate_irq (int,int*,scalar_t__) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pr_info (char*,int ) ;
 int raw_smp_processor_id () ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int cci_pmu_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct cci_pmu *cci_pmu;
 int i, ret, irq;

 cci_pmu = cci_pmu_alloc(&pdev->dev);
 if (IS_ERR(cci_pmu))
  return PTR_ERR(cci_pmu);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 cci_pmu->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(cci_pmu->base))
  return -ENOMEM;





 cci_pmu->nr_irqs = 0;
 for (i = 0; i < CCI_PMU_MAX_HW_CNTRS(cci_pmu->model); i++) {
  irq = platform_get_irq(pdev, i);
  if (irq < 0)
   break;

  if (is_duplicate_irq(irq, cci_pmu->irqs, cci_pmu->nr_irqs))
   continue;

  cci_pmu->irqs[cci_pmu->nr_irqs++] = irq;
 }





 if (i < CCI_PMU_MAX_HW_CNTRS(cci_pmu->model)) {
  dev_warn(&pdev->dev, "In-correct number of interrupts: %d, should be %d\n",
   i, CCI_PMU_MAX_HW_CNTRS(cci_pmu->model));
  return -EINVAL;
 }

 raw_spin_lock_init(&cci_pmu->hw_events.pmu_lock);
 mutex_init(&cci_pmu->reserve_mutex);
 atomic_set(&cci_pmu->active_events, 0);

 cci_pmu->cpu = raw_smp_processor_id();
 g_cci_pmu = cci_pmu;
 cpuhp_setup_state_nocalls(CPUHP_AP_PERF_ARM_CCI_ONLINE,
      "perf/arm/cci:online", ((void*)0),
      cci_pmu_offline_cpu);

 ret = cci_pmu_init(cci_pmu, pdev);
 if (ret)
  goto error_pmu_init;

 pr_info("ARM %s PMU driver probed", cci_pmu->model->name);
 return 0;

error_pmu_init:
 cpuhp_remove_state(CPUHP_AP_PERF_ARM_CCI_ONLINE);
 g_cci_pmu = ((void*)0);
 return ret;
}
