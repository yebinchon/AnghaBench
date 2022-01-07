
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* fcp_cmd_send ) (struct fc_lport*,struct fc_fcp_pkt*,int ) ;} ;
struct fc_lport {TYPE_3__ tt; } ;
struct TYPE_7__ {int fc_flags; int fc_cdb; int fc_lun; int fc_dl; } ;
struct fc_fcp_pkt {int req_flags; int list; TYPE_5__* cmd; TYPE_2__ cdb_cmd; int data_len; } ;
struct fc_fcp_internal {int scsi_queue_lock; int scsi_pkt_queue; } ;
struct TYPE_9__ {char* ptr; } ;
struct TYPE_10__ {TYPE_4__ SCp; int cmd_len; int cmnd; TYPE_1__* device; } ;
struct TYPE_6__ {int lun; } ;


 int FCP_CFL_LEN_MASK ;
 int fc_fcp_recv ;
 struct fc_fcp_internal* fc_get_scsi_internal (struct fc_lport*) ;
 int htonl (int ) ;
 int int_to_scsilun (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fc_lport*,struct fc_fcp_pkt*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fc_fcp_pkt_send(struct fc_lport *lport, struct fc_fcp_pkt *fsp)
{
 struct fc_fcp_internal *si = fc_get_scsi_internal(lport);
 unsigned long flags;
 int rc;

 fsp->cmd->SCp.ptr = (char *)fsp;
 fsp->cdb_cmd.fc_dl = htonl(fsp->data_len);
 fsp->cdb_cmd.fc_flags = fsp->req_flags & ~FCP_CFL_LEN_MASK;

 int_to_scsilun(fsp->cmd->device->lun, &fsp->cdb_cmd.fc_lun);
 memcpy(fsp->cdb_cmd.fc_cdb, fsp->cmd->cmnd, fsp->cmd->cmd_len);

 spin_lock_irqsave(&si->scsi_queue_lock, flags);
 list_add_tail(&fsp->list, &si->scsi_pkt_queue);
 spin_unlock_irqrestore(&si->scsi_queue_lock, flags);
 rc = lport->tt.fcp_cmd_send(lport, fsp, fc_fcp_recv);
 if (unlikely(rc)) {
  spin_lock_irqsave(&si->scsi_queue_lock, flags);
  fsp->cmd->SCp.ptr = ((void*)0);
  list_del(&fsp->list);
  spin_unlock_irqrestore(&si->scsi_queue_lock, flags);
 }

 return rc;
}
