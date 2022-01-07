
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; struct device* parent; int * fops; int minor; } ;
struct tegra_vde {int iram_pool; scalar_t__ iram; TYPE_1__ miscdev; int decode_completion; int lock; int map_lock; int map_list; int iram_lists_addr; void* rst_mc; void* rst; void* clk; void* frameid; void* vdma; void* ppb; void* tfe; void* mce; void* ppe; void* mbe; void* bsev; void* sxe; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MISC_DYNAMIC_MINOR ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 void* devm_clk_get (struct device*,int *) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct tegra_vde* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct tegra_vde*) ;
 void* devm_reset_control_get (struct device*,int *) ;
 void* devm_reset_control_get_optional (struct device*,char*) ;
 scalar_t__ gen_pool_dma_alloc (int ,int ,int *) ;
 int gen_pool_free (int ,unsigned long,int ) ;
 int gen_pool_size (int ) ;
 int init_completion (int *) ;
 int misc_deregister (TYPE_1__*) ;
 int misc_register (TYPE_1__*) ;
 int mutex_init (int *) ;
 int of_gen_pool_get (int ,char*,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_vde*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int tegra_vde_fops ;
 int tegra_vde_iommu_deinit (struct tegra_vde*) ;
 int tegra_vde_iommu_init (struct tegra_vde*) ;
 int tegra_vde_isr ;
 int tegra_vde_runtime_resume (struct device*) ;

__attribute__((used)) static int tegra_vde_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *regs;
 struct tegra_vde *vde;
 int irq, err;

 vde = devm_kzalloc(dev, sizeof(*vde), GFP_KERNEL);
 if (!vde)
  return -ENOMEM;

 platform_set_drvdata(pdev, vde);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sxe");
 if (!regs)
  return -ENODEV;

 vde->sxe = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->sxe))
  return PTR_ERR(vde->sxe);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "bsev");
 if (!regs)
  return -ENODEV;

 vde->bsev = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->bsev))
  return PTR_ERR(vde->bsev);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mbe");
 if (!regs)
  return -ENODEV;

 vde->mbe = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->mbe))
  return PTR_ERR(vde->mbe);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ppe");
 if (!regs)
  return -ENODEV;

 vde->ppe = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->ppe))
  return PTR_ERR(vde->ppe);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mce");
 if (!regs)
  return -ENODEV;

 vde->mce = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->mce))
  return PTR_ERR(vde->mce);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "tfe");
 if (!regs)
  return -ENODEV;

 vde->tfe = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->tfe))
  return PTR_ERR(vde->tfe);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ppb");
 if (!regs)
  return -ENODEV;

 vde->ppb = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->ppb))
  return PTR_ERR(vde->ppb);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vdma");
 if (!regs)
  return -ENODEV;

 vde->vdma = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->vdma))
  return PTR_ERR(vde->vdma);

 regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "frameid");
 if (!regs)
  return -ENODEV;

 vde->frameid = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vde->frameid))
  return PTR_ERR(vde->frameid);

 vde->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(vde->clk)) {
  err = PTR_ERR(vde->clk);
  dev_err(dev, "Could not get VDE clk %d\n", err);
  return err;
 }

 vde->rst = devm_reset_control_get(dev, ((void*)0));
 if (IS_ERR(vde->rst)) {
  err = PTR_ERR(vde->rst);
  dev_err(dev, "Could not get VDE reset %d\n", err);
  return err;
 }

 vde->rst_mc = devm_reset_control_get_optional(dev, "mc");
 if (IS_ERR(vde->rst_mc)) {
  err = PTR_ERR(vde->rst_mc);
  dev_err(dev, "Could not get MC reset %d\n", err);
  return err;
 }

 irq = platform_get_irq_byname(pdev, "sync-token");
 if (irq < 0)
  return irq;

 err = devm_request_irq(dev, irq, tegra_vde_isr, 0,
          dev_name(dev), vde);
 if (err) {
  dev_err(dev, "Could not request IRQ %d\n", err);
  return err;
 }

 vde->iram_pool = of_gen_pool_get(dev->of_node, "iram", 0);
 if (!vde->iram_pool) {
  dev_err(dev, "Could not get IRAM pool\n");
  return -EPROBE_DEFER;
 }

 vde->iram = gen_pool_dma_alloc(vde->iram_pool,
           gen_pool_size(vde->iram_pool),
           &vde->iram_lists_addr);
 if (!vde->iram) {
  dev_err(dev, "Could not reserve IRAM\n");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&vde->map_list);
 mutex_init(&vde->map_lock);
 mutex_init(&vde->lock);
 init_completion(&vde->decode_completion);

 vde->miscdev.minor = MISC_DYNAMIC_MINOR;
 vde->miscdev.name = "tegra_vde";
 vde->miscdev.fops = &tegra_vde_fops;
 vde->miscdev.parent = dev;

 err = tegra_vde_iommu_init(vde);
 if (err) {
  dev_err(dev, "Failed to initialize IOMMU: %d\n", err);
  goto err_gen_free;
 }

 err = misc_register(&vde->miscdev);
 if (err) {
  dev_err(dev, "Failed to register misc device: %d\n", err);
  goto err_deinit_iommu;
 }

 pm_runtime_enable(dev);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, 300);

 if (!pm_runtime_enabled(dev)) {
  err = tegra_vde_runtime_resume(dev);
  if (err)
   goto err_misc_unreg;
 }

 return 0;

err_misc_unreg:
 misc_deregister(&vde->miscdev);

err_deinit_iommu:
 tegra_vde_iommu_deinit(vde);

err_gen_free:
 gen_pool_free(vde->iram_pool, (unsigned long)vde->iram,
        gen_pool_size(vde->iram_pool));

 return err;
}
