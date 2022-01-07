
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sym_hcb {int dummy; } ;
struct sym_ccb {int ssss_status; int host_flags; int sv_scsi_status; int sv_resid; int xerr_status; int host_status; int lun; int target; int sns_bbuf; int sv_xerr_status; struct scsi_cmnd* cmd; } ;
struct scsi_cmnd {int result; TYPE_1__* device; scalar_t__ sense_data; int sense_buffer; } ;
struct TYPE_2__ {int id; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DRIVER_SENSE ;
 int HF_SENSE ;
 int HS_COMPLETE ;
 int HS_SEL_TIMEOUT ;
 int HS_UNEXPECTED ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SYM_SNS_BBUF_LEN ;
 int S_GOOD ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int min (int ,int ) ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;
 int sym_clear_tasks (struct sym_hcb*,int ,int ,int ,int) ;
 int sym_print_addr (struct scsi_cmnd*,char*,int ,int,int ) ;
 int sym_print_xerr (struct scsi_cmnd*,int ) ;
 int sym_reset_scsi_target (struct sym_hcb*,int ) ;
 scalar_t__ sym_verbose ;
 int sym_xerr_cam_status (int,int ) ;

void sym_set_cam_result_error(struct sym_hcb *np, struct sym_ccb *cp, int resid)
{
 struct scsi_cmnd *cmd = cp->cmd;
 u_int cam_status, scsi_status, drv_status;

 drv_status = 0;
 cam_status = DID_OK;
 scsi_status = cp->ssss_status;

 if (cp->host_flags & HF_SENSE) {
  scsi_status = cp->sv_scsi_status;
  resid = cp->sv_resid;
  if (sym_verbose && cp->sv_xerr_status)
   sym_print_xerr(cmd, cp->sv_xerr_status);
  if (cp->host_status == HS_COMPLETE &&
      cp->ssss_status == S_GOOD &&
      cp->xerr_status == 0) {
   cam_status = sym_xerr_cam_status(DID_OK,
        cp->sv_xerr_status);
   drv_status = DRIVER_SENSE;



   memset(cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
   memcpy(cmd->sense_buffer, cp->sns_bbuf,
          min(SCSI_SENSE_BUFFERSIZE, SYM_SNS_BBUF_LEN));
  } else {






   sym_reset_scsi_target(np, cmd->device->id);
   cam_status = DID_ERROR;
  }
 } else if (cp->host_status == HS_COMPLETE)
  cam_status = DID_OK;
 else if (cp->host_status == HS_SEL_TIMEOUT)
  cam_status = DID_NO_CONNECT;
 else if (cp->host_status == HS_UNEXPECTED)
  cam_status = DID_ERROR;
 else {
  if (sym_verbose) {
   sym_print_addr(cmd, "COMMAND FAILED (%x %x %x).\n",
    cp->host_status, cp->ssss_status,
    cp->xerr_status);
  }



  cam_status = sym_xerr_cam_status(DID_ERROR, cp->xerr_status);
 }
 scsi_set_resid(cmd, resid);
 cmd->result = (drv_status << 24) | (cam_status << 16) | scsi_status;
}
