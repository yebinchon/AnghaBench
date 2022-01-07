
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rproc {scalar_t__ priv; } ;
struct da8xx_rproc {int irq_data; int (* ack_fxn ) (int ) ;scalar_t__ chipsig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int SYSCFG_CHIPSIG0 ;
 int readl (scalar_t__) ;
 int stub1 (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t da8xx_rproc_callback(int irq, void *p)
{
 struct rproc *rproc = (struct rproc *)p;
 struct da8xx_rproc *drproc = (struct da8xx_rproc *)rproc->priv;
 u32 chipsig;

 chipsig = readl(drproc->chipsig);
 if (chipsig & SYSCFG_CHIPSIG0) {

  writel(SYSCFG_CHIPSIG0, drproc->chipsig + 4);
  drproc->ack_fxn(drproc->irq_data);

  return IRQ_WAKE_THREAD;
 }

 return IRQ_HANDLED;
}
