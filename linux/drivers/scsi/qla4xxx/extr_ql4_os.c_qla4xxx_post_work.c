
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int work_lock; int work_list; } ;
struct qla4_work_evt {int list; } ;


 int list_add_tail (int *,int *) ;
 int qla4xxx_wake_dpc (struct scsi_qla_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qla4xxx_post_work(struct scsi_qla_host *ha,
        struct qla4_work_evt *e)
{
 unsigned long flags;

 spin_lock_irqsave(&ha->work_lock, flags);
 list_add_tail(&e->list, &ha->work_list);
 spin_unlock_irqrestore(&ha->work_lock, flags);
 qla4xxx_wake_dpc(ha);
}
