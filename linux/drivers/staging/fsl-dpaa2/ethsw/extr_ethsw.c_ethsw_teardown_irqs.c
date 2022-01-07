
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct ethsw_core {int dpsw_handle; int mc_io; } ;


 int DPSW_IRQ_INDEX_IF ;
 int dev_err (struct device*,char*,int) ;
 struct ethsw_core* dev_get_drvdata (struct device*) ;
 int dpsw_set_irq_enable (int ,int ,int ,int ,int ) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;

__attribute__((used)) static void ethsw_teardown_irqs(struct fsl_mc_device *sw_dev)
{
 struct device *dev = &sw_dev->dev;
 struct ethsw_core *ethsw = dev_get_drvdata(dev);
 int err;

 err = dpsw_set_irq_enable(ethsw->mc_io, 0, ethsw->dpsw_handle,
      DPSW_IRQ_INDEX_IF, 0);
 if (err)
  dev_err(dev, "dpsw_set_irq_enable err %d\n", err);

 fsl_mc_free_irqs(sw_dev);
}
