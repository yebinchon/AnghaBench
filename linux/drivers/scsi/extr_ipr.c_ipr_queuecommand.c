
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int result; int* cmnd; scalar_t__ underflow; int flags; int (* scsi_done ) (struct scsi_cmnd*) ;int sense_buffer; int cmd_len; TYPE_1__* device; } ;
struct ipr_resource_entry {scalar_t__ needs_sync_complete; int res_handle; scalar_t__ raw_mode; scalar_t__ reset_occurred; TYPE_2__* sata_port; } ;
struct TYPE_8__ {int flags_hi; int request_type; int flags_lo; int cdb; } ;
struct ipr_ioarcb {TYPE_4__ cmd_pkt; int res_handle; } ;
struct ipr_ioa_cfg {scalar_t__ sis64; struct ipr_hrr_queue* hrrq; TYPE_3__* host; } ;
struct ipr_hrr_queue {int ioa_is_dead; int lock; int hrrq_pending_q; int hrrq_free_q; int allow_cmds; scalar_t__ removing_ioa; } ;
struct ipr_cmnd {int queue; int done; struct scsi_cmnd* scsi_cmd; struct ipr_ioarcb ioarcb; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_7__ {int host_lock; } ;
struct TYPE_6__ {int ap; } ;
struct TYPE_5__ {struct ipr_resource_entry* hostdata; } ;


 int DID_NO_CONNECT ;
 int DID_OK ;
 int IPR_FLAGS_HI_NO_LINK_DESC ;
 int IPR_FLAGS_HI_NO_ULEN_CHK ;
 int IPR_FLAGS_HI_SYNC_COMPLETE ;
 int IPR_FLAGS_LO_ALIGNED_BFR ;
 int IPR_FLAGS_LO_DELAY_AFTER_RST ;
 int IPR_FLAGS_LO_SIMPLE_TASK ;
 int IPR_FLAGS_LO_UNTAGGED_TASK ;
 int IPR_GET_RES_PHYS_LOC (struct ipr_resource_entry*) ;
 int IPR_QUERY_RSRC_STATE ;
 int IPR_RQTYPE_IOACMD ;
 int IPR_RQTYPE_PIPE ;
 int IPR_TRACE_START ;
 int SCMD_TAGGED ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int SCSI_SENSE_BUFFERSIZE ;
 struct ipr_cmnd* __ipr_get_free_ipr_cmnd (struct ipr_hrr_queue*) ;
 int ata_sas_queuecmd (struct scsi_cmnd*,int ) ;
 int ipr_build_ioadl (struct ipr_ioa_cfg*,struct ipr_cmnd*) ;
 int ipr_build_ioadl64 (struct ipr_ioa_cfg*,struct ipr_cmnd*) ;
 int ipr_get_hrrq_index (struct ipr_ioa_cfg*) ;
 int ipr_init_ipr_cmnd (struct ipr_cmnd*,int ) ;
 scalar_t__ ipr_is_af_dasd_device (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_gata (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_gscsi (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_vset_device (struct ipr_resource_entry*) ;
 int ipr_scsi_done ;
 int ipr_scsi_eh_done ;
 int ipr_send_command (struct ipr_cmnd*) ;
 int ipr_trc_hook (struct ipr_cmnd*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int*,int ) ;
 int memset (int ,int ,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipr_queuecommand(struct Scsi_Host *shost,
       struct scsi_cmnd *scsi_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg;
 struct ipr_resource_entry *res;
 struct ipr_ioarcb *ioarcb;
 struct ipr_cmnd *ipr_cmd;
 unsigned long hrrq_flags, lock_flags;
 int rc;
 struct ipr_hrr_queue *hrrq;
 int hrrq_id;

 ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;

 scsi_cmd->result = (DID_OK << 16);
 res = scsi_cmd->device->hostdata;

 if (ipr_is_gata(res) && res->sata_port) {
  spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
  rc = ata_sas_queuecmd(scsi_cmd, res->sata_port->ap);
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  return rc;
 }

 hrrq_id = ipr_get_hrrq_index(ioa_cfg);
 hrrq = &ioa_cfg->hrrq[hrrq_id];

 spin_lock_irqsave(hrrq->lock, hrrq_flags);





 if (unlikely(!hrrq->allow_cmds && !hrrq->ioa_is_dead && !hrrq->removing_ioa)) {
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  return SCSI_MLQUEUE_HOST_BUSY;
 }





 if (unlikely(hrrq->ioa_is_dead || hrrq->removing_ioa || !res)) {
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  goto err_nodev;
 }

 ipr_cmd = __ipr_get_free_ipr_cmnd(hrrq);
 if (ipr_cmd == ((void*)0)) {
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  return SCSI_MLQUEUE_HOST_BUSY;
 }
 spin_unlock_irqrestore(hrrq->lock, hrrq_flags);

 ipr_init_ipr_cmnd(ipr_cmd, ipr_scsi_done);
 ioarcb = &ipr_cmd->ioarcb;

 memcpy(ioarcb->cmd_pkt.cdb, scsi_cmd->cmnd, scsi_cmd->cmd_len);
 ipr_cmd->scsi_cmd = scsi_cmd;
 ipr_cmd->done = ipr_scsi_eh_done;

 if (ipr_is_gscsi(res)) {
  if (scsi_cmd->underflow == 0)
   ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_ULEN_CHK;

  if (res->reset_occurred) {
   res->reset_occurred = 0;
   ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_DELAY_AFTER_RST;
  }
 }

 if (ipr_is_gscsi(res) || ipr_is_vset_device(res)) {
  ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_LINK_DESC;

  ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_ALIGNED_BFR;
  if (scsi_cmd->flags & SCMD_TAGGED)
   ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_SIMPLE_TASK;
  else
   ioarcb->cmd_pkt.flags_lo |= IPR_FLAGS_LO_UNTAGGED_TASK;
 }

 if (scsi_cmd->cmnd[0] >= 0xC0 &&
     (!ipr_is_gscsi(res) || scsi_cmd->cmnd[0] == IPR_QUERY_RSRC_STATE)) {
  ioarcb->cmd_pkt.request_type = IPR_RQTYPE_IOACMD;
 }
 if (res->raw_mode && ipr_is_af_dasd_device(res)) {
  ioarcb->cmd_pkt.request_type = IPR_RQTYPE_PIPE;

  if (scsi_cmd->underflow == 0)
   ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_ULEN_CHK;
 }

 if (ioa_cfg->sis64)
  rc = ipr_build_ioadl64(ioa_cfg, ipr_cmd);
 else
  rc = ipr_build_ioadl(ioa_cfg, ipr_cmd);

 spin_lock_irqsave(hrrq->lock, hrrq_flags);
 if (unlikely(rc || (!hrrq->allow_cmds && !hrrq->ioa_is_dead))) {
  list_add_tail(&ipr_cmd->queue, &hrrq->hrrq_free_q);
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  if (!rc)
   scsi_dma_unmap(scsi_cmd);
  return SCSI_MLQUEUE_HOST_BUSY;
 }

 if (unlikely(hrrq->ioa_is_dead)) {
  list_add_tail(&ipr_cmd->queue, &hrrq->hrrq_free_q);
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  scsi_dma_unmap(scsi_cmd);
  goto err_nodev;
 }

 ioarcb->res_handle = res->res_handle;
 if (res->needs_sync_complete) {
  ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_SYNC_COMPLETE;
  res->needs_sync_complete = 0;
 }
 list_add_tail(&ipr_cmd->queue, &hrrq->hrrq_pending_q);
 ipr_trc_hook(ipr_cmd, IPR_TRACE_START, IPR_GET_RES_PHYS_LOC(res));
 ipr_send_command(ipr_cmd);
 spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
 return 0;

err_nodev:
 spin_lock_irqsave(hrrq->lock, hrrq_flags);
 memset(scsi_cmd->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
 scsi_cmd->result = (DID_NO_CONNECT << 16);
 scsi_cmd->scsi_done(scsi_cmd);
 spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
 return 0;
}
