
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct scsi_cmnd {int result; TYPE_1__ sdb; } ;
struct iscsi_task {int itt; struct scsi_cmnd* sc; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_data_rsp {int flags; int cmd_status; int residual_count; int statsn; } ;
struct iscsi_conn {int exp_statsn; int scsirsp_pdus_cnt; int session; } ;


 int DID_BAD_TARGET ;
 int DID_OK ;
 int ISCSI_DBG_SESSION (int ,char*,struct scsi_cmnd*,int,int ) ;
 int ISCSI_FLAG_CMD_OVERFLOW ;
 int ISCSI_FLAG_DATA_OVERFLOW ;
 int ISCSI_FLAG_DATA_STATUS ;
 int ISCSI_FLAG_DATA_UNDERFLOW ;
 int ISCSI_TASK_COMPLETED ;
 int be32_to_cpu (int ) ;
 int iscsi_complete_task (struct iscsi_task*,int ) ;
 int iscsi_update_cmdsn (int ,struct iscsi_nopin*) ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;

__attribute__((used)) static void
iscsi_data_in_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
    struct iscsi_task *task)
{
 struct iscsi_data_rsp *rhdr = (struct iscsi_data_rsp *)hdr;
 struct scsi_cmnd *sc = task->sc;

 if (!(rhdr->flags & ISCSI_FLAG_DATA_STATUS))
  return;

 iscsi_update_cmdsn(conn->session, (struct iscsi_nopin *)hdr);
 sc->result = (DID_OK << 16) | rhdr->cmd_status;
 conn->exp_statsn = be32_to_cpu(rhdr->statsn) + 1;
 if (rhdr->flags & (ISCSI_FLAG_DATA_UNDERFLOW |
                    ISCSI_FLAG_DATA_OVERFLOW)) {
  int res_count = be32_to_cpu(rhdr->residual_count);

  if (res_count > 0 &&
      (rhdr->flags & ISCSI_FLAG_CMD_OVERFLOW ||
       res_count <= sc->sdb.length))
   scsi_set_resid(sc, res_count);
  else
   sc->result = (DID_BAD_TARGET << 16) | rhdr->cmd_status;
 }

 ISCSI_DBG_SESSION(conn->session, "data in with status done "
     "[sc %p res %d itt 0x%x]\n",
     sc, sc->result, task->itt);
 conn->scsirsp_pdus_cnt++;
 iscsi_complete_task(task, ISCSI_TASK_COMPLETED);
}
