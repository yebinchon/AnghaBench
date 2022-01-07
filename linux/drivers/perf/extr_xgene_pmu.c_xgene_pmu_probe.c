
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xgene_pmu_data {int id; } ;
struct xgene_pmu {int version; int irq; int mcb_active_mask; int mc_active_mask; int node; TYPE_1__* ops; int lock; int pcppmu_csr; int mcpmus; int mcbpmus; int iobpmus; int l3cpmus; int * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_3__ {int (* unmask_int ) (struct xgene_pmu*) ;} ;


 scalar_t__ ACPI_COMPANION (int *) ;
 int CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_NOBALANCING ;
 int IRQF_NO_THREAD ;
 scalar_t__ IS_ERR (int ) ;
 int PCP_PMU_V3 ;
 int PTR_ERR (int ) ;
 struct acpi_device_id* acpi_match_device (int ,int *) ;
 int cpuhp_setup_state_multi (int ,char*,int ,int ) ;
 int cpuhp_state_add_instance (int ,int *) ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct xgene_pmu* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int,int ,struct xgene_pmu*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xgene_pmu*) ;
 int raw_spin_lock_init (int *) ;
 int stub1 (struct xgene_pmu*) ;
 int xgene_pmu_acpi_match ;
 int xgene_pmu_isr ;
 int xgene_pmu_of_match ;
 int xgene_pmu_offline_cpu ;
 int xgene_pmu_online_cpu ;
 TYPE_1__ xgene_pmu_ops ;
 int xgene_pmu_probe_active_mcb_mcu_l3c (struct xgene_pmu*,struct platform_device*) ;
 int xgene_pmu_probe_pmu_dev (struct xgene_pmu*,struct platform_device*) ;
 TYPE_1__ xgene_pmu_v3_ops ;

__attribute__((used)) static int xgene_pmu_probe(struct platform_device *pdev)
{
 const struct xgene_pmu_data *dev_data;
 const struct of_device_id *of_id;
 struct xgene_pmu *xgene_pmu;
 struct resource *res;
 int irq, rc;
 int version;


 rc = cpuhp_setup_state_multi(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
          "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE",
          xgene_pmu_online_cpu,
          xgene_pmu_offline_cpu);
 if (rc)
  return rc;

 xgene_pmu = devm_kzalloc(&pdev->dev, sizeof(*xgene_pmu), GFP_KERNEL);
 if (!xgene_pmu)
  return -ENOMEM;
 xgene_pmu->dev = &pdev->dev;
 platform_set_drvdata(pdev, xgene_pmu);

 version = -EINVAL;
 of_id = of_match_device(xgene_pmu_of_match, &pdev->dev);
 if (of_id) {
  dev_data = (const struct xgene_pmu_data *) of_id->data;
  version = dev_data->id;
 }
 if (version < 0)
  return -ENODEV;

 if (version == PCP_PMU_V3)
  xgene_pmu->ops = &xgene_pmu_v3_ops;
 else
  xgene_pmu->ops = &xgene_pmu_ops;

 INIT_LIST_HEAD(&xgene_pmu->l3cpmus);
 INIT_LIST_HEAD(&xgene_pmu->iobpmus);
 INIT_LIST_HEAD(&xgene_pmu->mcbpmus);
 INIT_LIST_HEAD(&xgene_pmu->mcpmus);

 xgene_pmu->version = version;
 dev_info(&pdev->dev, "X-Gene PMU version %d\n", xgene_pmu->version);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xgene_pmu->pcppmu_csr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(xgene_pmu->pcppmu_csr)) {
  dev_err(&pdev->dev, "ioremap failed for PCP PMU resource\n");
  return PTR_ERR(xgene_pmu->pcppmu_csr);
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -EINVAL;

 rc = devm_request_irq(&pdev->dev, irq, xgene_pmu_isr,
    IRQF_NOBALANCING | IRQF_NO_THREAD,
    dev_name(&pdev->dev), xgene_pmu);
 if (rc) {
  dev_err(&pdev->dev, "Could not request IRQ %d\n", irq);
  return rc;
 }

 xgene_pmu->irq = irq;

 raw_spin_lock_init(&xgene_pmu->lock);


 rc = xgene_pmu_probe_active_mcb_mcu_l3c(xgene_pmu, pdev);
 if (rc) {
  dev_warn(&pdev->dev, "Unknown MCB/MCU active status\n");
  xgene_pmu->mcb_active_mask = 0x1;
  xgene_pmu->mc_active_mask = 0x1;
 }


 rc = cpuhp_state_add_instance(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
          &xgene_pmu->node);
 if (rc) {
  dev_err(&pdev->dev, "Error %d registering hotplug", rc);
  return rc;
 }


 rc = xgene_pmu_probe_pmu_dev(xgene_pmu, pdev);
 if (rc) {
  dev_err(&pdev->dev, "No PMU perf devices found!\n");
  goto out_unregister;
 }


 xgene_pmu->ops->unmask_int(xgene_pmu);

 return 0;

out_unregister:
 cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
        &xgene_pmu->node);
 return rc;
}
