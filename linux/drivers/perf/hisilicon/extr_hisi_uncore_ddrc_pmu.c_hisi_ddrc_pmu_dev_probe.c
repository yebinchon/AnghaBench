
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hisi_pmu {int counter_bits; int on_cpu; int check_event; int * dev; int * ops; int num_counters; } ;


 int DDRC_NR_COUNTERS ;
 int hisi_ddrc_pmu_init_data (struct platform_device*,struct hisi_pmu*) ;
 int hisi_ddrc_pmu_init_irq (struct hisi_pmu*,struct platform_device*) ;
 int hisi_uncore_ddrc_ops ;

__attribute__((used)) static int hisi_ddrc_pmu_dev_probe(struct platform_device *pdev,
       struct hisi_pmu *ddrc_pmu)
{
 int ret;

 ret = hisi_ddrc_pmu_init_data(pdev, ddrc_pmu);
 if (ret)
  return ret;

 ret = hisi_ddrc_pmu_init_irq(ddrc_pmu, pdev);
 if (ret)
  return ret;

 ddrc_pmu->num_counters = DDRC_NR_COUNTERS;
 ddrc_pmu->counter_bits = 32;
 ddrc_pmu->ops = &hisi_uncore_ddrc_ops;
 ddrc_pmu->dev = &pdev->dev;
 ddrc_pmu->on_cpu = -1;
 ddrc_pmu->check_event = 7;

 return 0;
}
