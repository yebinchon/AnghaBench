
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct eadm_scsw {int stctl; int eswf; int fctl; scalar_t__ aob; } ;
struct TYPE_6__ {struct eadm_scsw eadm; } ;
struct TYPE_7__ {TYPE_1__ scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct TYPE_8__ {scalar_t__ r; } ;
struct TYPE_9__ {TYPE_3__ erw; } ;
struct TYPE_10__ {TYPE_4__ eadm; } ;
struct irb {TYPE_5__ esw; } ;
struct eadm_private {scalar_t__ state; scalar_t__ completion; } ;
struct aob {int dummy; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BLK_STS_TIMEOUT ;
 scalar_t__ EADM_BUSY ;
 scalar_t__ EADM_IDLE ;
 int EADM_LOG (int,char*) ;
 int EADM_LOG_HEX (int,struct irb*,int) ;
 scalar_t__ EADM_NOT_OPER ;
 int IRQIO_ADM ;
 int SCH_TODO_EVAL ;
 int SCSW_FCTL_CLEAR_FUNC ;
 int SCSW_STCTL_ALERT_STATUS ;
 int SCSW_STCTL_STATUS_PEND ;
 int cio_irb ;
 int complete (scalar_t__) ;
 int css_sched_sch_todo (struct subchannel*,int ) ;
 int eadm_subchannel_set_timeout (struct subchannel*,int ) ;
 struct eadm_private* get_eadm_private (struct subchannel*) ;
 int inc_irq_stat (int ) ;
 int scm_irq_handler (struct aob*,int ) ;
 struct irb* this_cpu_ptr (int *) ;

__attribute__((used)) static void eadm_subchannel_irq(struct subchannel *sch)
{
 struct eadm_private *private = get_eadm_private(sch);
 struct eadm_scsw *scsw = &sch->schib.scsw.eadm;
 struct irb *irb = this_cpu_ptr(&cio_irb);
 blk_status_t error = BLK_STS_OK;

 EADM_LOG(6, "irq");
 EADM_LOG_HEX(6, irb, sizeof(*irb));

 inc_irq_stat(IRQIO_ADM);

 if ((scsw->stctl & (SCSW_STCTL_ALERT_STATUS | SCSW_STCTL_STATUS_PEND))
     && scsw->eswf == 1 && irb->esw.eadm.erw.r)
  error = BLK_STS_IOERR;

 if (scsw->fctl & SCSW_FCTL_CLEAR_FUNC)
  error = BLK_STS_TIMEOUT;

 eadm_subchannel_set_timeout(sch, 0);

 if (private->state != EADM_BUSY) {
  EADM_LOG(1, "irq unsol");
  EADM_LOG_HEX(1, irb, sizeof(*irb));
  private->state = EADM_NOT_OPER;
  css_sched_sch_todo(sch, SCH_TODO_EVAL);
  return;
 }
 scm_irq_handler((struct aob *)(unsigned long)scsw->aob, error);
 private->state = EADM_IDLE;

 if (private->completion)
  complete(private->completion);
}
