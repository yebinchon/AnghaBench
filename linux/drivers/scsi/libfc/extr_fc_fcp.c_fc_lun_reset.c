
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_lport {int dummy; } ;
struct TYPE_2__ {int fc_lun; int fc_tm_flags; int fc_dl; } ;
struct fc_fcp_pkt {int wait_for_comp; scalar_t__ cdb_status; int scsi_pkt_lock; int * seq_ptr; int timer; int state; int tm_done; TYPE_1__ cdb_cmd; int data_len; } ;


 int FAILED ;
 scalar_t__ FCP_TMF_CMPL ;
 int FCP_TMF_LUN_RESET ;
 int FC_CMD_ABORTED ;
 int FC_SCSI_DBG (struct fc_lport*,char*,...) ;
 int FC_SCSI_TM_TOV ;
 int FC_SRB_COMPL ;
 int SUCCESS ;
 int del_timer_sync (int *) ;
 int fc_exch_done (int *) ;
 int fc_fcp_cleanup_each_cmd (struct fc_lport*,unsigned int,unsigned int,int ) ;
 int fc_lun_reset_send (int *) ;
 int htonl (int ) ;
 int init_completion (int *) ;
 int int_to_scsilun (unsigned int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int fc_lun_reset(struct fc_lport *lport, struct fc_fcp_pkt *fsp,
   unsigned int id, unsigned int lun)
{
 int rc;

 fsp->cdb_cmd.fc_dl = htonl(fsp->data_len);
 fsp->cdb_cmd.fc_tm_flags = FCP_TMF_LUN_RESET;
 int_to_scsilun(lun, &fsp->cdb_cmd.fc_lun);

 fsp->wait_for_comp = 1;
 init_completion(&fsp->tm_done);

 fc_lun_reset_send(&fsp->timer);





 rc = wait_for_completion_timeout(&fsp->tm_done, FC_SCSI_TM_TOV);

 spin_lock_bh(&fsp->scsi_pkt_lock);
 fsp->state |= FC_SRB_COMPL;
 spin_unlock_bh(&fsp->scsi_pkt_lock);

 del_timer_sync(&fsp->timer);

 spin_lock_bh(&fsp->scsi_pkt_lock);
 if (fsp->seq_ptr) {
  fc_exch_done(fsp->seq_ptr);
  fsp->seq_ptr = ((void*)0);
 }
 fsp->wait_for_comp = 0;
 spin_unlock_bh(&fsp->scsi_pkt_lock);

 if (!rc) {
  FC_SCSI_DBG(lport, "lun reset failed\n");
  return FAILED;
 }


 if (fsp->cdb_status != FCP_TMF_CMPL)
  return FAILED;

 FC_SCSI_DBG(lport, "lun reset to lun %u completed\n", lun);
 fc_fcp_cleanup_each_cmd(lport, id, lun, FC_CMD_ABORTED);
 return SUCCESS;
}
