
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dcon_priv {int switched; int waitq; void* irq_time; int pending_src; int curr_src; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ (* read_status ) (int*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 void* ktime_get () ;
 TYPE_1__* pdata ;
 int pr_debug (char*) ;
 scalar_t__ stub1 (int*) ;
 int wake_up (int *) ;

irqreturn_t dcon_interrupt(int irq, void *id)
{
 struct dcon_priv *dcon = id;
 u8 status;

 if (pdata->read_status(&status))
  return IRQ_NONE;

 switch (status & 3) {
 case 3:
  pr_debug("DCONLOAD_MISSED interrupt\n");
  break;

 case 2:
 case 1:
  dcon->switched = 1;
  dcon->irq_time = ktime_get();
  wake_up(&dcon->waitq);
  break;

 case 0:







  if (dcon->curr_src != dcon->pending_src && !dcon->switched) {
   dcon->switched = 1;
   dcon->irq_time = ktime_get();
   wake_up(&dcon->waitq);
   pr_debug("switching w/ status 0/0\n");
  } else {
   pr_debug("scanline interrupt w/CPU\n");
  }
 }

 return IRQ_HANDLED;
}
