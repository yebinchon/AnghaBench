
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa3xx_gcu_shared {int num_done; scalar_t__ hw_running; int num_idle; int num_interrupts; } ;
struct pxa3xx_gcu_priv {int spinlock; int wait_idle; scalar_t__ ready; int wait_free; struct pxa3xx_gcu_shared* shared; } ;
typedef int irqreturn_t ;


 int IE_ALL ;
 int IE_EEOB ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QDUMP (char*) ;
 int QERROR (char*) ;
 int REG_GCISCR ;
 int REG_GCRBLR ;
 int dump_whole_state (struct pxa3xx_gcu_priv*) ;
 int flush_running (struct pxa3xx_gcu_priv*) ;
 int gc_readl (struct pxa3xx_gcu_priv*,int ) ;
 int gc_writel (struct pxa3xx_gcu_priv*,int ,int) ;
 int run_ready (struct pxa3xx_gcu_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static irqreturn_t
pxa3xx_gcu_handle_irq(int irq, void *ctx)
{
 struct pxa3xx_gcu_priv *priv = ctx;
 struct pxa3xx_gcu_shared *shared = priv->shared;
 u32 status = gc_readl(priv, REG_GCISCR) & IE_ALL;

 QDUMP("-Interrupt");

 if (!status)
  return IRQ_NONE;

 spin_lock(&priv->spinlock);
 shared->num_interrupts++;

 if (status & IE_EEOB) {
  QDUMP(" [EEOB]");

  flush_running(priv);
  wake_up_all(&priv->wait_free);

  if (priv->ready) {
   run_ready(priv);
  } else {



   shared->num_idle++;
   shared->hw_running = 0;

   QDUMP(" '-> Idle.");


   gc_writel(priv, REG_GCRBLR, 0);

   wake_up_all(&priv->wait_idle);
  }

  shared->num_done++;
 } else {
  QERROR(" [???]");
  dump_whole_state(priv);
 }


 gc_writel(priv, REG_GCISCR, status);
 spin_unlock(&priv->spinlock);

 return IRQ_HANDLED;
}
