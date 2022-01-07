
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdq_data {int hdq_irqstatus; int dev; int hdq_spinlock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OMAP_HDQ_INT_STATUS ;
 int OMAP_HDQ_INT_STATUS_RXCOMPLETE ;
 int OMAP_HDQ_INT_STATUS_TIMEOUT ;
 int OMAP_HDQ_INT_STATUS_TXCOMPLETE ;
 int dev_dbg (int ,char*,int) ;
 int hdq_reg_in (struct hdq_data*,int ) ;
 int hdq_wait_queue ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t hdq_isr(int irq, void *_hdq)
{
 struct hdq_data *hdq_data = _hdq;
 unsigned long irqflags;

 spin_lock_irqsave(&hdq_data->hdq_spinlock, irqflags);
 hdq_data->hdq_irqstatus = hdq_reg_in(hdq_data, OMAP_HDQ_INT_STATUS);
 spin_unlock_irqrestore(&hdq_data->hdq_spinlock, irqflags);
 dev_dbg(hdq_data->dev, "hdq_isr: %x", hdq_data->hdq_irqstatus);

 if (hdq_data->hdq_irqstatus &
  (OMAP_HDQ_INT_STATUS_TXCOMPLETE | OMAP_HDQ_INT_STATUS_RXCOMPLETE
  | OMAP_HDQ_INT_STATUS_TIMEOUT)) {

  wake_up(&hdq_wait_queue);
 }

 return IRQ_HANDLED;
}
