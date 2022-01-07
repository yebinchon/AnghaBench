
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct l2cache_pmu {int num_pmus; int clusters; } ;
struct device {struct device* parent; } ;
struct cluster_pmu {unsigned long cluster_id; int irq; int on_cpu; int pmu_lock; struct l2cache_pmu* l2cache_pmu; int next; } ;
struct TYPE_2__ {int unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;


 int ACPI_HANDLE (struct device*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_NOBALANCING ;
 int IRQF_NO_THREAD ;
 int IRQ_NOAUTOEN ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned long) ;
 struct cluster_pmu* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int,char*,struct cluster_pmu*) ;
 int irq_set_status_flags (int,int ) ;
 scalar_t__ kstrtoul (int ,int,unsigned long*) ;
 int l2_cache_handle_irq ;
 int list_add (int *,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int spin_lock_init (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int l2_cache_pmu_probe_cluster(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev->parent);
 struct platform_device *sdev = to_platform_device(dev);
 struct l2cache_pmu *l2cache_pmu = data;
 struct cluster_pmu *cluster;
 struct acpi_device *device;
 unsigned long fw_cluster_id;
 int err;
 int irq;

 if (acpi_bus_get_device(ACPI_HANDLE(dev), &device))
  return -ENODEV;

 if (kstrtoul(device->pnp.unique_id, 10, &fw_cluster_id) < 0) {
  dev_err(&pdev->dev, "unable to read ACPI uid\n");
  return -ENODEV;
 }

 cluster = devm_kzalloc(&pdev->dev, sizeof(*cluster), GFP_KERNEL);
 if (!cluster)
  return -ENOMEM;

 INIT_LIST_HEAD(&cluster->next);
 list_add(&cluster->next, &l2cache_pmu->clusters);
 cluster->cluster_id = fw_cluster_id;

 irq = platform_get_irq(sdev, 0);
 if (irq < 0)
  return irq;
 irq_set_status_flags(irq, IRQ_NOAUTOEN);
 cluster->irq = irq;

 cluster->l2cache_pmu = l2cache_pmu;
 cluster->on_cpu = -1;

 err = devm_request_irq(&pdev->dev, irq, l2_cache_handle_irq,
          IRQF_NOBALANCING | IRQF_NO_THREAD,
          "l2-cache-pmu", cluster);
 if (err) {
  dev_err(&pdev->dev,
   "Unable to request IRQ%d for L2 PMU counters\n", irq);
  return err;
 }

 dev_info(&pdev->dev,
  "Registered L2 cache PMU cluster %ld\n", fw_cluster_id);

 spin_lock_init(&cluster->pmu_lock);

 l2cache_pmu->num_pmus++;

 return 0;
}
