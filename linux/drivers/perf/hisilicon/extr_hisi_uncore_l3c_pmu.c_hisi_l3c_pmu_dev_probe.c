
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hisi_pmu {int counter_bits; int on_cpu; int check_event; int * dev; int * ops; int num_counters; } ;


 int L3C_NR_COUNTERS ;
 int hisi_l3c_pmu_init_data (struct platform_device*,struct hisi_pmu*) ;
 int hisi_l3c_pmu_init_irq (struct hisi_pmu*,struct platform_device*) ;
 int hisi_uncore_l3c_ops ;

__attribute__((used)) static int hisi_l3c_pmu_dev_probe(struct platform_device *pdev,
      struct hisi_pmu *l3c_pmu)
{
 int ret;

 ret = hisi_l3c_pmu_init_data(pdev, l3c_pmu);
 if (ret)
  return ret;

 ret = hisi_l3c_pmu_init_irq(l3c_pmu, pdev);
 if (ret)
  return ret;

 l3c_pmu->num_counters = L3C_NR_COUNTERS;
 l3c_pmu->counter_bits = 48;
 l3c_pmu->ops = &hisi_uncore_l3c_ops;
 l3c_pmu->dev = &pdev->dev;
 l3c_pmu->on_cpu = -1;
 l3c_pmu->check_event = 0x59;

 return 0;
}
