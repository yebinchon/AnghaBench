
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mips_ejtag_fdc_tty_port {unsigned int xmit_cnt; int xmit_lock; } ;
struct mips_ejtag_fdc_tty {int xmit_full; scalar_t__ irq; size_t xmit_next; struct mips_ejtag_fdc_tty_port* ports; int waitqueue; int lock; int xmit_total; } ;


 size_t NUM_TTY_CHANNELS ;
 int REG_FDCFG ;
 int REG_FDCFG_TXINTTHRES ;
 int REG_FDCFG_TXINTTHRES_NOTFULL ;
 int REG_FDSTAT ;
 int REG_FDSTAT_TXF ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ kthread_should_stop () ;
 unsigned int mips_ejtag_fdc_put_chan (struct mips_ejtag_fdc_tty*,size_t) ;
 int mips_ejtag_fdc_read (struct mips_ejtag_fdc_tty*,int ) ;
 int mips_ejtag_fdc_write (struct mips_ejtag_fdc_tty*,int ,int) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int mips_ejtag_fdc_put(void *arg)
{
 struct mips_ejtag_fdc_tty *priv = arg;
 struct mips_ejtag_fdc_tty_port *dport;
 unsigned int ret;
 u32 cfg;

 __set_current_state(TASK_RUNNING);
 while (!kthread_should_stop()) {

  wait_event_interruptible(priv->waitqueue,
      atomic_read(&priv->xmit_total) ||
      kthread_should_stop());
  if (kthread_should_stop())
   break;


  raw_spin_lock_irq(&priv->lock);
  if (mips_ejtag_fdc_read(priv, REG_FDSTAT) & REG_FDSTAT_TXF) {
   priv->xmit_full = 1;
   if (priv->irq >= 0) {

    cfg = mips_ejtag_fdc_read(priv, REG_FDCFG);
    cfg &= ~REG_FDCFG_TXINTTHRES;
    cfg |= REG_FDCFG_TXINTTHRES_NOTFULL;
    mips_ejtag_fdc_write(priv, REG_FDCFG, cfg);
   }
  }
  raw_spin_unlock_irq(&priv->lock);
  wait_event_interruptible(priv->waitqueue,
      !(mips_ejtag_fdc_read(priv, REG_FDSTAT)
        & REG_FDSTAT_TXF) ||
      kthread_should_stop());
  if (kthread_should_stop())
   break;


  for (;;) {
   dport = &priv->ports[priv->xmit_next];
   spin_lock(&dport->xmit_lock);
   ret = dport->xmit_cnt;
   spin_unlock(&dport->xmit_lock);
   if (ret)
    break;

   ++priv->xmit_next;
   if (priv->xmit_next >= NUM_TTY_CHANNELS)
    priv->xmit_next = 0;
  }


  ret = mips_ejtag_fdc_put_chan(priv, priv->xmit_next);





  if (ret) {
   ++priv->xmit_next;
   if (priv->xmit_next >= NUM_TTY_CHANNELS)
    priv->xmit_next = 0;
  }
 }

 return 0;
}
