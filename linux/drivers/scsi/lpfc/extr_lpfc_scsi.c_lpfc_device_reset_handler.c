
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_scsi_event_header {int wwnn; int wwpn; int lun; int subcategory; int event_type; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int scsi_event ;
struct TYPE_2__ {unsigned int id; int lun; struct Scsi_Host* host; } ;


 int FAILED ;
 int FCP_LUN_RESET ;
 int FC_REG_SCSI_EVENT ;
 int KERN_ERR ;
 int LOG_FCP ;
 int LPFC_CTX_LUN ;
 int LPFC_EVENT_LUNRESET ;
 int LPFC_NL_VENDOR_ID ;
 int SUCCESS ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int ) ;
 int lpfc_chk_tgt_mapped (struct lpfc_vport*,struct scsi_cmnd*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 int lpfc_reset_flush_io_context (struct lpfc_vport*,unsigned int,int ,int ) ;
 struct lpfc_rport_data* lpfc_rport_data_from_scsi_device (TYPE_1__*) ;
 int lpfc_send_taskmgmt (struct lpfc_vport*,struct scsi_cmnd*,unsigned int,int ,int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int
lpfc_device_reset_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_rport_data *rdata;
 struct lpfc_nodelist *pnode;
 unsigned tgt_id = cmnd->device->id;
 uint64_t lun_id = cmnd->device->lun;
 struct lpfc_scsi_event_header scsi_event;
 int status;

 rdata = lpfc_rport_data_from_scsi_device(cmnd->device);
 if (!rdata || !rdata->pnode) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
     "0798 Device Reset rdata failure: rdata x%px\n",
     rdata);
  return FAILED;
 }
 pnode = rdata->pnode;
 status = fc_block_scsi_eh(cmnd);
 if (status != 0 && status != SUCCESS)
  return status;

 status = lpfc_chk_tgt_mapped(vport, cmnd);
 if (status == FAILED) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
   "0721 Device Reset rport failure: rdata x%px\n", rdata);
  return FAILED;
 }

 scsi_event.event_type = FC_REG_SCSI_EVENT;
 scsi_event.subcategory = LPFC_EVENT_LUNRESET;
 scsi_event.lun = lun_id;
 memcpy(scsi_event.wwpn, &pnode->nlp_portname, sizeof(struct lpfc_name));
 memcpy(scsi_event.wwnn, &pnode->nlp_nodename, sizeof(struct lpfc_name));

 fc_host_post_vendor_event(shost, fc_get_event_number(),
  sizeof(scsi_event), (char *)&scsi_event, LPFC_NL_VENDOR_ID);

 status = lpfc_send_taskmgmt(vport, cmnd, tgt_id, lun_id,
      FCP_LUN_RESET);

 lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
    "0713 SCSI layer issued Device Reset (%d, %llu) "
    "return x%x\n", tgt_id, lun_id, status);







 if (status == SUCCESS)
  status = lpfc_reset_flush_io_context(vport, tgt_id, lun_id,
      LPFC_CTX_LUN);

 return status;
}
