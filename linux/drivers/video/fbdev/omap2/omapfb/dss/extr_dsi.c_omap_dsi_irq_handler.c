
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {int isr_tables_copy; int irq_lock; int isr_tables; int te_timer; int is_enabled; } ;
typedef int irqreturn_t ;


 int DSI_COMPLEXIO_IRQ_STATUS ;
 int DSI_IRQSTATUS ;
 int DSI_IRQ_CHANNEL_MASK ;
 int DSI_IRQ_COMPLEXIO_ERR ;
 int DSI_IRQ_TE_TRIGGER ;
 int DSI_VC_IRQSTATUS (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int del_timer (int *) ;
 int dsi_collect_irq_stats (struct platform_device*,int,int*,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_handle_irq_errors (struct platform_device*,int,int*,int) ;
 int dsi_handle_isrs (int *,int,int*,int) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 int dsi_write_reg (struct platform_device*,int ,int) ;
 int memcpy (int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t omap_dsi_irq_handler(int irq, void *arg)
{
 struct platform_device *dsidev;
 struct dsi_data *dsi;
 u32 irqstatus, vcstatus[4], ciostatus;
 int i;

 dsidev = (struct platform_device *) arg;
 dsi = dsi_get_dsidrv_data(dsidev);

 if (!dsi->is_enabled)
  return IRQ_NONE;

 spin_lock(&dsi->irq_lock);

 irqstatus = dsi_read_reg(dsidev, DSI_IRQSTATUS);


 if (!irqstatus) {
  spin_unlock(&dsi->irq_lock);
  return IRQ_NONE;
 }

 dsi_write_reg(dsidev, DSI_IRQSTATUS, irqstatus & ~DSI_IRQ_CHANNEL_MASK);

 dsi_read_reg(dsidev, DSI_IRQSTATUS);

 for (i = 0; i < 4; ++i) {
  if ((irqstatus & (1 << i)) == 0) {
   vcstatus[i] = 0;
   continue;
  }

  vcstatus[i] = dsi_read_reg(dsidev, DSI_VC_IRQSTATUS(i));

  dsi_write_reg(dsidev, DSI_VC_IRQSTATUS(i), vcstatus[i]);

  dsi_read_reg(dsidev, DSI_VC_IRQSTATUS(i));
 }

 if (irqstatus & DSI_IRQ_COMPLEXIO_ERR) {
  ciostatus = dsi_read_reg(dsidev, DSI_COMPLEXIO_IRQ_STATUS);

  dsi_write_reg(dsidev, DSI_COMPLEXIO_IRQ_STATUS, ciostatus);

  dsi_read_reg(dsidev, DSI_COMPLEXIO_IRQ_STATUS);
 } else {
  ciostatus = 0;
 }
 memcpy(&dsi->isr_tables_copy, &dsi->isr_tables,
  sizeof(dsi->isr_tables));

 spin_unlock(&dsi->irq_lock);

 dsi_handle_isrs(&dsi->isr_tables_copy, irqstatus, vcstatus, ciostatus);

 dsi_handle_irq_errors(dsidev, irqstatus, vcstatus, ciostatus);

 dsi_collect_irq_stats(dsidev, irqstatus, vcstatus, ciostatus);

 return IRQ_HANDLED;
}
