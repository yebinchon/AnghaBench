
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int region_count; int id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int mc_io; int mc_handle; TYPE_2__* regions; TYPE_1__ obj_desc; struct device dev; } ;
struct dpio_priv {int io; } ;
struct dpio_attr {int num_priorities; int qbman_version; } ;
struct dpaa2_io_desc {int receives_notifications; int has_8prio; int cpu; int regs_cinh; void* regs_cena; int dpio_id; int qman_version; } ;
struct TYPE_4__ {int start; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int ERANGE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int MEMREMAP_WB ;
 int MEMREMAP_WC ;
 int PTR_ERR (void*) ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_first (int ) ;
 int cpus_unused_mask ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct dpio_priv*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 struct dpio_priv* devm_kzalloc (struct device*,int,int ) ;
 void* devm_memremap (struct device*,int ,int ,int ) ;
 int dpaa2_dpio_get_cluster_sdest (struct fsl_mc_device*,int) ;
 int dpaa2_io_create (struct dpaa2_io_desc*,struct device*) ;
 int dpio_close (int ,int ,int ) ;
 int dpio_disable (int ,int ,int ) ;
 int dpio_enable (int ,int ,int ) ;
 int dpio_get_attributes (int ,int ,int ,struct dpio_attr*) ;
 int dpio_open (int ,int ,int ,int *) ;
 int dpio_reset (int ,int ,int ) ;
 int dpio_set_stashing_destination (int ,int ,int ,int) ;
 int fsl_mc_allocate_irqs (struct fsl_mc_device*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;
 int fsl_mc_portal_allocate (struct fsl_mc_device*,int ,int *) ;
 int fsl_mc_portal_free (int ) ;
 int nr_cpu_ids ;
 int register_dpio_irq_handlers (struct fsl_mc_device*,int) ;
 int resource_size (TYPE_2__*) ;
 int unregister_dpio_irq_handlers (struct fsl_mc_device*) ;

__attribute__((used)) static int dpaa2_dpio_probe(struct fsl_mc_device *dpio_dev)
{
 struct dpio_attr dpio_attrs;
 struct dpaa2_io_desc desc;
 struct dpio_priv *priv;
 int err = -ENOMEM;
 struct device *dev = &dpio_dev->dev;
 int possible_next_cpu;
 int sdest;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  goto err_priv_alloc;

 dev_set_drvdata(dev, priv);

 err = fsl_mc_portal_allocate(dpio_dev, 0, &dpio_dev->mc_io);
 if (err) {
  dev_dbg(dev, "MC portal allocation failed\n");
  err = -EPROBE_DEFER;
  goto err_priv_alloc;
 }

 err = dpio_open(dpio_dev->mc_io, 0, dpio_dev->obj_desc.id,
   &dpio_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpio_open() failed\n");
  goto err_open;
 }

 err = dpio_reset(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpio_reset() failed\n");
  goto err_reset;
 }

 err = dpio_get_attributes(dpio_dev->mc_io, 0, dpio_dev->mc_handle,
      &dpio_attrs);
 if (err) {
  dev_err(dev, "dpio_get_attributes() failed %d\n", err);
  goto err_get_attr;
 }
 desc.qman_version = dpio_attrs.qbman_version;

 err = dpio_enable(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpio_enable() failed %d\n", err);
  goto err_get_attr;
 }


 desc.receives_notifications = dpio_attrs.num_priorities ? 1 : 0;
 desc.has_8prio = dpio_attrs.num_priorities == 8 ? 1 : 0;
 desc.dpio_id = dpio_dev->obj_desc.id;


 possible_next_cpu = cpumask_first(cpus_unused_mask);
 if (possible_next_cpu >= nr_cpu_ids) {
  dev_err(dev, "probe failed. Number of DPIOs exceeds NR_CPUS.\n");
  err = -ERANGE;
  goto err_allocate_irqs;
 }
 desc.cpu = possible_next_cpu;
 cpumask_clear_cpu(possible_next_cpu, cpus_unused_mask);

 sdest = dpaa2_dpio_get_cluster_sdest(dpio_dev, desc.cpu);
 if (sdest >= 0) {
  err = dpio_set_stashing_destination(dpio_dev->mc_io, 0,
          dpio_dev->mc_handle,
          sdest);
  if (err)
   dev_err(dev, "dpio_set_stashing_destination failed for cpu%d\n",
    desc.cpu);
 }

 if (dpio_dev->obj_desc.region_count < 3) {






  desc.regs_cena = devm_memremap(dev, dpio_dev->regions[1].start,
     resource_size(&dpio_dev->regions[1]),
     MEMREMAP_WC);
 } else {
  desc.regs_cena = devm_memremap(dev, dpio_dev->regions[2].start,
     resource_size(&dpio_dev->regions[2]),
     MEMREMAP_WB);
 }

 if (IS_ERR(desc.regs_cena)) {
  dev_err(dev, "devm_memremap failed\n");
  err = PTR_ERR(desc.regs_cena);
  goto err_allocate_irqs;
 }

 desc.regs_cinh = devm_ioremap(dev, dpio_dev->regions[1].start,
          resource_size(&dpio_dev->regions[1]));
 if (!desc.regs_cinh) {
  err = -ENOMEM;
  dev_err(dev, "devm_ioremap failed\n");
  goto err_allocate_irqs;
 }

 err = fsl_mc_allocate_irqs(dpio_dev);
 if (err) {
  dev_err(dev, "fsl_mc_allocate_irqs failed. err=%d\n", err);
  goto err_allocate_irqs;
 }

 err = register_dpio_irq_handlers(dpio_dev, desc.cpu);
 if (err)
  goto err_register_dpio_irq;

 priv->io = dpaa2_io_create(&desc, dev);
 if (!priv->io) {
  dev_err(dev, "dpaa2_io_create failed\n");
  err = -ENOMEM;
  goto err_dpaa2_io_create;
 }

 dev_info(dev, "probed\n");
 dev_dbg(dev, "   receives_notifications = %d\n",
  desc.receives_notifications);
 dpio_close(dpio_dev->mc_io, 0, dpio_dev->mc_handle);

 return 0;

err_dpaa2_io_create:
 unregister_dpio_irq_handlers(dpio_dev);
err_register_dpio_irq:
 fsl_mc_free_irqs(dpio_dev);
err_allocate_irqs:
 dpio_disable(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
err_get_attr:
err_reset:
 dpio_close(dpio_dev->mc_io, 0, dpio_dev->mc_handle);
err_open:
 fsl_mc_portal_free(dpio_dev->mc_io);
err_priv_alloc:
 return err;
}
