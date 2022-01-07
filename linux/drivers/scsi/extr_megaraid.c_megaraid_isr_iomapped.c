
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int irqreturn_t ;
struct TYPE_12__ {int lock; int quiescent; TYPE_2__* mbox; int pend_cmds; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_10__ {int numstatus; int status; scalar_t__ completed; } ;
struct TYPE_11__ {TYPE_1__ m_in; } ;


 int IRQ_RETVAL (int) ;
 int MAX_FIRMWARE_STATUS ;
 int VALID_INTR_BYTE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int cpu_relax () ;
 int irq_ack (TYPE_3__*) ;
 int irq_state (TYPE_3__*) ;
 int mega_cmd_done (TYPE_3__*,int*,int,int) ;
 int mega_rundoneq (TYPE_3__*) ;
 int mega_runpendq (TYPE_3__*) ;
 int memcpy (int*,void*,int) ;
 int set_irq_state (TYPE_3__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
megaraid_isr_iomapped(int irq, void *devp)
{
 adapter_t *adapter = devp;
 unsigned long flags;
 u8 status;
 u8 nstatus;
 u8 completed[MAX_FIRMWARE_STATUS];
 u8 byte;
 int handled = 0;





 spin_lock_irqsave(&adapter->lock, flags);

 do {

  byte = irq_state(adapter);
  if( (byte & VALID_INTR_BYTE) == 0 ) {



   goto out_unlock;
  }
  set_irq_state(adapter, byte);

  while((nstatus = (volatile u8)adapter->mbox->m_in.numstatus)
    == 0xFF)
   cpu_relax();
  adapter->mbox->m_in.numstatus = 0xFF;

  status = adapter->mbox->m_in.status;




  atomic_sub(nstatus, &adapter->pend_cmds);

  memcpy(completed, (void *)adapter->mbox->m_in.completed,
    nstatus);


  irq_ack(adapter);

  mega_cmd_done(adapter, completed, nstatus, status);

  mega_rundoneq(adapter);

  handled = 1;


  if(atomic_read(&adapter->quiescent) == 0) {
   mega_runpendq(adapter);
  }

 } while(1);

 out_unlock:

 spin_unlock_irqrestore(&adapter->lock, flags);

 return IRQ_RETVAL(handled);
}
