
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xgene_msi {TYPE_1__* msi_groups; int num_cpus; int node; int msi_addr; int msi_regs; } ;
struct resource {int start; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int gic_irq; int msi_grp; struct xgene_msi* msi; } ;


 int CPUHP_AP_ONLINE_DYN ;
 int CPUHP_PCI_XGENE_DEAD ;
 int EINVAL ;
 scalar_t__ IDX_PER_GROUP ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int NR_HW_IRQS ;
 int PTR_ERR (int ) ;
 int cpuhp_setup_state (int ,char*,int *,int *) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int num_possible_cpus () ;
 int pci_xgene_online ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xgene_msi*) ;
 int xgene_allocate_domains (struct xgene_msi*) ;
 struct xgene_msi xgene_msi_ctrl ;
 int * xgene_msi_hwirq_alloc ;
 int * xgene_msi_hwirq_free ;
 int xgene_msi_init_allocator (struct xgene_msi*) ;
 scalar_t__ xgene_msi_int_read (struct xgene_msi*,int) ;
 scalar_t__ xgene_msi_ir_read (struct xgene_msi*,int,scalar_t__) ;
 int xgene_msi_remove (struct platform_device*) ;

__attribute__((used)) static int xgene_msi_probe(struct platform_device *pdev)
{
 struct resource *res;
 int rc, irq_index;
 struct xgene_msi *xgene_msi;
 int virt_msir;
 u32 msi_val, msi_idx;

 xgene_msi = &xgene_msi_ctrl;

 platform_set_drvdata(pdev, xgene_msi);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xgene_msi->msi_regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(xgene_msi->msi_regs)) {
  dev_err(&pdev->dev, "no reg space\n");
  rc = PTR_ERR(xgene_msi->msi_regs);
  goto error;
 }
 xgene_msi->msi_addr = res->start;
 xgene_msi->node = pdev->dev.of_node;
 xgene_msi->num_cpus = num_possible_cpus();

 rc = xgene_msi_init_allocator(xgene_msi);
 if (rc) {
  dev_err(&pdev->dev, "Error allocating MSI bitmap\n");
  goto error;
 }

 rc = xgene_allocate_domains(xgene_msi);
 if (rc) {
  dev_err(&pdev->dev, "Failed to allocate MSI domain\n");
  goto error;
 }

 for (irq_index = 0; irq_index < NR_HW_IRQS; irq_index++) {
  virt_msir = platform_get_irq(pdev, irq_index);
  if (virt_msir < 0) {
   dev_err(&pdev->dev, "Cannot translate IRQ index %d\n",
    irq_index);
   rc = virt_msir;
   goto error;
  }
  xgene_msi->msi_groups[irq_index].gic_irq = virt_msir;
  xgene_msi->msi_groups[irq_index].msi_grp = irq_index;
  xgene_msi->msi_groups[irq_index].msi = xgene_msi;
 }






 for (irq_index = 0; irq_index < NR_HW_IRQS; irq_index++) {
  for (msi_idx = 0; msi_idx < IDX_PER_GROUP; msi_idx++)
   msi_val = xgene_msi_ir_read(xgene_msi, irq_index,
          msi_idx);

  msi_val = xgene_msi_int_read(xgene_msi, irq_index);
  if (msi_val) {
   dev_err(&pdev->dev, "Failed to clear spurious IRQ\n");
   rc = -EINVAL;
   goto error;
  }
 }

 rc = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "pci/xgene:online",
          xgene_msi_hwirq_alloc, ((void*)0));
 if (rc < 0)
  goto err_cpuhp;
 pci_xgene_online = rc;
 rc = cpuhp_setup_state(CPUHP_PCI_XGENE_DEAD, "pci/xgene:dead", ((void*)0),
          xgene_msi_hwirq_free);
 if (rc)
  goto err_cpuhp;

 dev_info(&pdev->dev, "APM X-Gene PCIe MSI driver loaded\n");

 return 0;

err_cpuhp:
 dev_err(&pdev->dev, "failed to add CPU MSI notifier\n");
error:
 xgene_msi_remove(pdev);
 return rc;
}
