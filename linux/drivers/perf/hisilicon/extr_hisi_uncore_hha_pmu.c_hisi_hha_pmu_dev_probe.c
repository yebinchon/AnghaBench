
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hisi_pmu {int counter_bits; int on_cpu; int check_event; int * dev; int * ops; int num_counters; } ;


 int HHA_NR_COUNTERS ;
 int hisi_hha_pmu_init_data (struct platform_device*,struct hisi_pmu*) ;
 int hisi_hha_pmu_init_irq (struct hisi_pmu*,struct platform_device*) ;
 int hisi_uncore_hha_ops ;

__attribute__((used)) static int hisi_hha_pmu_dev_probe(struct platform_device *pdev,
      struct hisi_pmu *hha_pmu)
{
 int ret;

 ret = hisi_hha_pmu_init_data(pdev, hha_pmu);
 if (ret)
  return ret;

 ret = hisi_hha_pmu_init_irq(hha_pmu, pdev);
 if (ret)
  return ret;

 hha_pmu->num_counters = HHA_NR_COUNTERS;
 hha_pmu->counter_bits = 48;
 hha_pmu->ops = &hisi_uncore_hha_ops;
 hha_pmu->dev = &pdev->dev;
 hha_pmu->on_cpu = -1;
 hha_pmu->check_event = 0x65;

 return 0;
}
