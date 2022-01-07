
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int mc_io; int mc_handle; TYPE_1__ obj_desc; struct device dev; } ;
struct dpio_priv {int io; } ;


 int cpumask_set_cpu (int,int ) ;
 int cpus_unused_mask ;
 int dev_err (struct device*,char*) ;
 struct dpio_priv* dev_get_drvdata (struct device*) ;
 int dpaa2_io_down (int ) ;
 int dpaa2_io_get_cpu (int ) ;
 int dpio_close (int ,int ,int ) ;
 int dpio_disable (int ,int ,int ) ;
 int dpio_open (int ,int ,int ,int *) ;
 int dpio_teardown_irqs (struct fsl_mc_device*) ;
 int fsl_mc_portal_free (int ) ;

__attribute__((used)) static int dpaa2_dpio_remove(struct fsl_mc_device *dpio_dev)
{
 struct device *dev;
 struct dpio_priv *priv;
 int err = 0, cpu;

 dev = &dpio_dev->dev;
 priv = dev_get_drvdata(dev);
 cpu = dpaa2_io_get_cpu(priv->io);

 dpaa2_io_down(priv->io);

 dpio_teardown_irqs(dpio_dev);

 cpumask_set_cpu(cpu, cpus_unused_mask);

 err = dpio_open(dpio_dev->mc_io, 0, dpio_dev->obj_desc.id,
   &dpio_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpio_open() failed\n");
  goto err_open;
 }

 dpio_disable(dpio_dev->mc_io, 0, dpio_dev->mc_handle);

 dpio_close(dpio_dev->mc_io, 0, dpio_dev->mc_handle);

 fsl_mc_portal_free(dpio_dev->mc_io);

 return 0;

err_open:
 fsl_mc_portal_free(dpio_dev->mc_io);

 return err;
}
