
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct scsi_qla_host {scalar_t__ marker_needed; int vp_idx; struct req_que* req; struct qla_hw_data* hw; } ;
struct scsi_cmnd {unsigned char* host_scribble; int cmd_len; int cmnd; TYPE_5__* device; int sc_data_direction; } ;
struct req_que {scalar_t__ cnt; scalar_t__* out_ptr; scalar_t__ ring_index; scalar_t__ length; size_t current_outstanding_cmd; int req_q_in; scalar_t__ ring_ptr; scalar_t__ ring; int id; TYPE_6__** outstanding_cmds; int req_q_out; } ;
struct qla_hw_data {int hardware_lock; TYPE_1__* pdev; int base_qpair; } ;
struct cmd_type_7 {scalar_t__ entry_count; int byte_count; scalar_t__* fcp_cdb; int task; int lun; int vp_index; int * port_id; void* nport_handle; void* dseg_count; int handle; } ;
struct TYPE_15__ {size_t handle; int flags; struct scsi_qla_host* vha; TYPE_4__* fcport; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_14__ {int lun; } ;
struct TYPE_11__ {int domain; int area; int al_pa; } ;
struct TYPE_12__ {TYPE_2__ b; } ;
struct TYPE_13__ {scalar_t__ loop_id; TYPE_3__ d_id; } ;
struct TYPE_10__ {int dev; } ;


 struct scsi_cmnd* GET_CMD_SP (TYPE_6__*) ;
 scalar_t__ IS_SHADOW_REG_CAPABLE (struct qla_hw_data*) ;
 int MAKE_HANDLE (int ,size_t) ;
 int MK_SYNC_ALL ;
 int QLA_FUNCTION_FAILED ;
 scalar_t__ QLA_SUCCESS ;
 scalar_t__ RD_REG_DWORD_RELAXED (int ) ;
 scalar_t__ REQUEST_ENTRY_SIZE ;
 int SRB_DMA_VALID ;
 int TSK_SIMPLE ;
 int WRT_REG_DWORD (int ,scalar_t__) ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (size_t) ;
 int dma_map_sg (int *,int ,scalar_t__,int ) ;
 int host_to_fcp_swap (scalar_t__*,int) ;
 int int_to_scsilun (int ,int *) ;
 int memcpy (scalar_t__*,int ,int ) ;
 int memset (size_t*,int ,scalar_t__) ;
 int qla24xx_build_scsi_iocbs (TYPE_6__*,struct cmd_type_7*,scalar_t__,struct req_que*) ;
 scalar_t__ qla24xx_calc_iocbs (struct scsi_qla_host*,scalar_t__) ;
 scalar_t__ qla2x00_marker (struct scsi_qla_host*,int ,int ,int ,int ) ;
 size_t qla2xxx_get_next_handle (struct req_que*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

int
qla24xx_start_scsi(srb_t *sp)
{
 int nseg;
 unsigned long flags;
 uint32_t *clr_ptr;
 uint32_t handle;
 struct cmd_type_7 *cmd_pkt;
 uint16_t cnt;
 uint16_t req_cnt;
 uint16_t tot_dsds;
 struct req_que *req = ((void*)0);
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);
 struct scsi_qla_host *vha = sp->vha;
 struct qla_hw_data *ha = vha->hw;


 req = vha->req;


 tot_dsds = 0;


 if (vha->marker_needed != 0) {
  if (qla2x00_marker(vha, ha->base_qpair, 0, 0, MK_SYNC_ALL) !=
      QLA_SUCCESS)
   return QLA_FUNCTION_FAILED;
  vha->marker_needed = 0;
 }


 spin_lock_irqsave(&ha->hardware_lock, flags);

 handle = qla2xxx_get_next_handle(req);
 if (handle == 0)
  goto queuing_error;


 if (scsi_sg_count(cmd)) {
  nseg = dma_map_sg(&ha->pdev->dev, scsi_sglist(cmd),
      scsi_sg_count(cmd), cmd->sc_data_direction);
  if (unlikely(!nseg))
   goto queuing_error;
 } else
  nseg = 0;

 tot_dsds = nseg;
 req_cnt = qla24xx_calc_iocbs(vha, tot_dsds);
 if (req->cnt < (req_cnt + 2)) {
  cnt = IS_SHADOW_REG_CAPABLE(ha) ? *req->out_ptr :
      RD_REG_DWORD_RELAXED(req->req_q_out);
  if (req->ring_index < cnt)
   req->cnt = cnt - req->ring_index;
  else
   req->cnt = req->length -
    (req->ring_index - cnt);
  if (req->cnt < (req_cnt + 2))
   goto queuing_error;
 }


 req->current_outstanding_cmd = handle;
 req->outstanding_cmds[handle] = sp;
 sp->handle = handle;
 cmd->host_scribble = (unsigned char *)(unsigned long)handle;
 req->cnt -= req_cnt;

 cmd_pkt = (struct cmd_type_7 *)req->ring_ptr;
 cmd_pkt->handle = MAKE_HANDLE(req->id, handle);



 clr_ptr = (uint32_t *)cmd_pkt + 2;
 memset(clr_ptr, 0, REQUEST_ENTRY_SIZE - 8);
 cmd_pkt->dseg_count = cpu_to_le16(tot_dsds);


 cmd_pkt->nport_handle = cpu_to_le16(sp->fcport->loop_id);
 cmd_pkt->port_id[0] = sp->fcport->d_id.b.al_pa;
 cmd_pkt->port_id[1] = sp->fcport->d_id.b.area;
 cmd_pkt->port_id[2] = sp->fcport->d_id.b.domain;
 cmd_pkt->vp_index = sp->vha->vp_idx;

 int_to_scsilun(cmd->device->lun, &cmd_pkt->lun);
 host_to_fcp_swap((uint8_t *)&cmd_pkt->lun, sizeof(cmd_pkt->lun));

 cmd_pkt->task = TSK_SIMPLE;


 memcpy(cmd_pkt->fcp_cdb, cmd->cmnd, cmd->cmd_len);
 host_to_fcp_swap(cmd_pkt->fcp_cdb, sizeof(cmd_pkt->fcp_cdb));

 cmd_pkt->byte_count = cpu_to_le32((uint32_t)scsi_bufflen(cmd));


 qla24xx_build_scsi_iocbs(sp, cmd_pkt, tot_dsds, req);


 cmd_pkt->entry_count = (uint8_t)req_cnt;
 wmb();

 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else
  req->ring_ptr++;

 sp->flags |= SRB_DMA_VALID;


 WRT_REG_DWORD(req->req_q_in, req->ring_index);

 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 return QLA_SUCCESS;

queuing_error:
 if (tot_dsds)
  scsi_dma_unmap(cmd);

 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 return QLA_FUNCTION_FAILED;
}
