
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srb {int srb_ref; TYPE_1__* cmd; } ;
struct scsi_qla_host {int hardware_lock; TYPE_2__* host; } ;
struct TYPE_4__ {int can_queue; } ;
struct TYPE_3__ {int result; } ;


 int kref_put (int *,int ) ;
 struct srb* qla4xxx_del_from_active_array (struct scsi_qla_host*,int) ;
 int qla4xxx_srb_compl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qla4xxx_abort_active_cmds(struct scsi_qla_host *ha, int res)
{
 struct srb *srb;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 for (i = 0; i < ha->host->can_queue; i++) {
  srb = qla4xxx_del_from_active_array(ha, i);
  if (srb != ((void*)0)) {
   srb->cmd->result = res;
   kref_put(&srb->srb_ref, qla4xxx_srb_compl);
  }
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
}
