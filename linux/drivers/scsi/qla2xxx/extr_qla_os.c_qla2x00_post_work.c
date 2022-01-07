
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int iocb_work; TYPE_1__* hw; int work_lock; int dpc_flags; int work_list; } ;
struct qla_work_evt {int list; } ;
struct TYPE_2__ {int wq; } ;


 int IOCB_WORK_ACTIVE ;
 int QLA_SUCCESS ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

int
qla2x00_post_work(struct scsi_qla_host *vha, struct qla_work_evt *e)
{
 unsigned long flags;
 bool q = 0;

 spin_lock_irqsave(&vha->work_lock, flags);
 list_add_tail(&e->list, &vha->work_list);

 if (!test_and_set_bit(IOCB_WORK_ACTIVE, &vha->dpc_flags))
  q = 1;

 spin_unlock_irqrestore(&vha->work_lock, flags);

 if (q)
  queue_work(vha->hw->wq, &vha->iocb_work);

 return QLA_SUCCESS;
}
