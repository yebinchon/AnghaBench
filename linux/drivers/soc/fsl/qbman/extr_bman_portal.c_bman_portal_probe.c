
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct bm_portal_config {int cpu; int irq; int addr_virt_ce; int addr_virt_ci; struct device* dev; } ;


 int BM_POOL_MAX ;
 int DPAA_PORTAL_CE ;
 int DPAA_PORTAL_CI ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int QBMAN_MEMREMAP_ATTR ;
 int __bman_portals_probed ;
 int bm_shutdown_pool (int) ;
 int bman_done_cleanup () ;
 int bman_is_probed () ;
 int bman_lock ;
 int bman_offline_cpu (int) ;
 scalar_t__ bman_requires_cleanup () ;
 int cpu_online (int) ;
 int cpumask_next_zero (int,int *) ;
 int cpumask_set_cpu (int,int *) ;
 int dev_err (struct device*,char*,...) ;
 struct bm_portal_config* devm_kmalloc (struct device*,int,int ) ;
 int init_pcfg (struct bm_portal_config*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int memremap (int ,int ,int ) ;
 int memunmap (int ) ;
 int nr_cpu_ids ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int portal_cpus ;
 int resource_size (struct resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bman_portal_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct bm_portal_config *pcfg;
 struct resource *addr_phys[2];
 int irq, cpu, err, i;

 err = bman_is_probed();
 if (!err)
  return -EPROBE_DEFER;
 if (err < 0) {
  dev_err(&pdev->dev, "failing probe due to bman probe error\n");
  return -ENODEV;
 }

 pcfg = devm_kmalloc(dev, sizeof(*pcfg), GFP_KERNEL);
 if (!pcfg) {
  __bman_portals_probed = -1;
  return -ENOMEM;
 }

 pcfg->dev = dev;

 addr_phys[0] = platform_get_resource(pdev, IORESOURCE_MEM,
          DPAA_PORTAL_CE);
 if (!addr_phys[0]) {
  dev_err(dev, "Can't get %pOF property 'reg::CE'\n", node);
  goto err_ioremap1;
 }

 addr_phys[1] = platform_get_resource(pdev, IORESOURCE_MEM,
          DPAA_PORTAL_CI);
 if (!addr_phys[1]) {
  dev_err(dev, "Can't get %pOF property 'reg::CI'\n", node);
  goto err_ioremap1;
 }

 pcfg->cpu = -1;

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  goto err_ioremap1;
 pcfg->irq = irq;

 pcfg->addr_virt_ce = memremap(addr_phys[0]->start,
     resource_size(addr_phys[0]),
     QBMAN_MEMREMAP_ATTR);
 if (!pcfg->addr_virt_ce) {
  dev_err(dev, "memremap::CE failed\n");
  goto err_ioremap1;
 }

 pcfg->addr_virt_ci = ioremap(addr_phys[1]->start,
     resource_size(addr_phys[1]));
 if (!pcfg->addr_virt_ci) {
  dev_err(dev, "ioremap::CI failed\n");
  goto err_ioremap2;
 }

 spin_lock(&bman_lock);
 cpu = cpumask_next_zero(-1, &portal_cpus);
 if (cpu >= nr_cpu_ids) {
  __bman_portals_probed = 1;

  spin_unlock(&bman_lock);
  return 0;
 }

 cpumask_set_cpu(cpu, &portal_cpus);
 spin_unlock(&bman_lock);
 pcfg->cpu = cpu;

 if (!init_pcfg(pcfg)) {
  dev_err(dev, "portal init failed\n");
  goto err_portal_init;
 }


 if (!cpu_online(cpu))
  bman_offline_cpu(cpu);

 if (__bman_portals_probed == 1 && bman_requires_cleanup()) {




  for (i = 0; i < BM_POOL_MAX; i++) {
   err = bm_shutdown_pool(i);
   if (err) {
    dev_err(dev, "Failed to shutdown bpool %d\n",
     i);
    goto err_portal_init;
   }
  }
  bman_done_cleanup();
 }

 return 0;

err_portal_init:
 iounmap(pcfg->addr_virt_ci);
err_ioremap2:
 memunmap(pcfg->addr_virt_ce);
err_ioremap1:
  __bman_portals_probed = -1;

 return -ENXIO;
}
