
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethsw_core {int dpsw_handle; int mc_io; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int DPSW_IRQ_EVENT_LINK_CHANGED ;
 int DPSW_IRQ_INDEX_IF ;
 int IRQ_HANDLED ;
 int dev_err (struct device*,char*,int) ;
 struct ethsw_core* dev_get_drvdata (struct device*) ;
 int dpsw_clear_irq_status (int ,int ,int ,int ,int) ;
 int dpsw_get_irq_status (int ,int ,int ,int ,int*) ;
 int ethsw_links_state_update (struct ethsw_core*) ;

__attribute__((used)) static irqreturn_t ethsw_irq0_handler_thread(int irq_num, void *arg)
{
 struct device *dev = (struct device *)arg;
 struct ethsw_core *ethsw = dev_get_drvdata(dev);


 u32 status = DPSW_IRQ_EVENT_LINK_CHANGED | 0xFFFF0000;
 int err;

 err = dpsw_get_irq_status(ethsw->mc_io, 0, ethsw->dpsw_handle,
      DPSW_IRQ_INDEX_IF, &status);
 if (err) {
  dev_err(dev, "Can't get irq status (err %d)\n", err);

  err = dpsw_clear_irq_status(ethsw->mc_io, 0, ethsw->dpsw_handle,
         DPSW_IRQ_INDEX_IF, 0xFFFFFFFF);
  if (err)
   dev_err(dev, "Can't clear irq status (err %d)\n", err);
  goto out;
 }

 if (status & DPSW_IRQ_EVENT_LINK_CHANGED)
  ethsw_links_state_update(ethsw);

out:
 return IRQ_HANDLED;
}
