
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_lun {int dummy; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; int cmd_len; int cmnd; TYPE_1__* device; } ;
struct qedf_ioreq {scalar_t__ cmd_type; int data_xfer_len; int io_req_flags; int tm_flags; struct scsi_cmnd* sc_cmd; } ;
struct fcp_cmnd {int fc_dl; int fc_cdb; scalar_t__ fc_pri_ta; int fc_flags; scalar_t__ fc_cmdref; int fc_tm_flags; int fc_lun; } ;
struct TYPE_2__ {int lun; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int FCP_CFL_RDDATA ;
 int FCP_CFL_WRDATA ;
 int FCP_CMND_LEN ;
 scalar_t__ FCP_PTA_SIMPLE ;
 scalar_t__ QEDF_TASK_MGMT_CMD ;
 int htonl (int ) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct fcp_cmnd*,int ,int ) ;

__attribute__((used)) static void qedf_build_fcp_cmnd(struct qedf_ioreq *io_req,
      struct fcp_cmnd *fcp_cmnd)
{
 struct scsi_cmnd *sc_cmd = io_req->sc_cmd;


 memset(fcp_cmnd, 0, FCP_CMND_LEN);


 int_to_scsilun(sc_cmd->device->lun,
   (struct scsi_lun *)&fcp_cmnd->fc_lun);


 fcp_cmnd->fc_pri_ta = 0;
 fcp_cmnd->fc_tm_flags = io_req->tm_flags;
 fcp_cmnd->fc_flags = io_req->io_req_flags;
 fcp_cmnd->fc_cmdref = 0;


 if (io_req->cmd_type == QEDF_TASK_MGMT_CMD) {
  fcp_cmnd->fc_flags |= FCP_CFL_RDDATA;
 } else {
  if (sc_cmd->sc_data_direction == DMA_TO_DEVICE)
   fcp_cmnd->fc_flags |= FCP_CFL_WRDATA;
  else if (sc_cmd->sc_data_direction == DMA_FROM_DEVICE)
   fcp_cmnd->fc_flags |= FCP_CFL_RDDATA;
 }

 fcp_cmnd->fc_pri_ta = FCP_PTA_SIMPLE;


 if (io_req->cmd_type != QEDF_TASK_MGMT_CMD)
  memcpy(fcp_cmnd->fc_cdb, sc_cmd->cmnd, sc_cmd->cmd_len);


 fcp_cmnd->fc_dl = htonl(io_req->data_xfer_len);
}
