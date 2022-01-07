
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct task_status_struct {void* stat; void* resp; int open_rej_reason; int residual; } ;
struct sata_event_resp {int device_id; int port_id; int tag; int event; } ;
struct sas_task {int task_state_flags; int task_state_lock; int uldd_task; struct task_status_struct task_status; int dev; int lldd_task; } ;
struct pm8001_hba_info {struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int running_req; } ;
struct pm8001_ccb_info {struct pm8001_device* device; struct sas_task* task; } ;
 size_t IO_XFER_ERROR_ABORTED_NCQ_MODE ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 void* SAS_DATA_OVERRUN ;
 void* SAS_DATA_UNDERRUN ;
 void* SAS_DEV_NO_RESPONSE ;
 void* SAS_INTERRUPTED ;
 void* SAS_NAK_R_ERR ;
 void* SAS_OPEN_REJECT ;
 void* SAS_OPEN_TO ;
 int SAS_OREJ_BAD_DEST ;
 int SAS_OREJ_CONN_RATE ;
 int SAS_OREJ_EPROTO ;
 int SAS_OREJ_RSVD_CONT0 ;
 int SAS_OREJ_RSVD_RETRY ;
 int SAS_OREJ_UNKNOWN ;
 int SAS_OREJ_WRONG_DEST ;
 void* SAS_QUEUE_FULL ;
 int SAS_TASK_AT_INITIATOR ;
 void* SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int SAS_TASK_STATE_PENDING ;
 void* SAS_TASK_UNDELIVERED ;
 size_t le32_to_cpu (int ) ;
 int pm8001_ccb_task_free (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ;
 int pm8001_ccb_task_free_done (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ;
 struct pm8001_device* pm8001_find_dev (struct pm8001_hba_info*,size_t) ;
 int pm8001_handle_event (struct pm8001_hba_info*,struct pm8001_device*,int const) ;
 int pm8001_printk (char*,...) ;
 int pm80xx_send_read_log (struct pm8001_hba_info*,struct pm8001_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mpi_sata_event(struct pm8001_hba_info *pm8001_ha , void *piomb)
{
 struct sas_task *t;
 struct task_status_struct *ts;
 struct pm8001_ccb_info *ccb;
 struct pm8001_device *pm8001_dev;
 struct sata_event_resp *psataPayload =
  (struct sata_event_resp *)(piomb + 4);
 u32 event = le32_to_cpu(psataPayload->event);
 u32 tag = le32_to_cpu(psataPayload->tag);
 u32 port_id = le32_to_cpu(psataPayload->port_id);
 u32 dev_id = le32_to_cpu(psataPayload->device_id);
 unsigned long flags;

 ccb = &pm8001_ha->ccb_info[tag];

 if (ccb) {
  t = ccb->task;
  pm8001_dev = ccb->device;
 } else {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("No CCB !!!. returning\n"));
  return;
 }
 if (event)
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("SATA EVENT 0x%x\n", event));


 if (event == IO_XFER_ERROR_ABORTED_NCQ_MODE) {

  pm8001_dev = pm8001_find_dev(pm8001_ha, dev_id);

  if (pm8001_dev)
   pm80xx_send_read_log(pm8001_ha, pm8001_dev);
  return;
 }

 if (unlikely(!t || !t->lldd_task || !t->dev)) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("task or dev null\n"));
  return;
 }

 ts = &t->task_status;
 PM8001_IO_DBG(pm8001_ha,
  pm8001_printk("port_id:0x%x, tag:0x%x, event:0x%x\n",
    port_id, tag, event));
 switch (event) {
 case 144:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_UNDERFLOW\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DATA_OVERRUN;
  ts->residual = 0;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 141:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_INTERRUPTED;
  break;
 case 136:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_PHY_NOT_READY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 147:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_EPROTO;
  break;
 case 145:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_ZONE_VIOLATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_UNKNOWN;
  break;
 case 154:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_CONT0;
  break;
 case 152:
 case 130:
 case 149:
 case 151:
 case 150:
 case 148:
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_DEV_NO_RESPONSE;
  if (!t->uldd_task) {
   pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    152);
   ts->resp = SAS_TASK_COMPLETE;
   ts->stat = SAS_QUEUE_FULL;
   pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
   return;
  }
  break;
 case 155:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_BAD_DEST;
  break;
 case 153:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_CONN_RATE;
  break;
 case 146:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
  break;
 case 139:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_NAK_RECEIVED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_NAK_R_ERR;
  break;
 case 137:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_PEER_ABORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_NAK_R_ERR;
  break;
 case 135:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_REJECTED_NCQ_MODE\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DATA_UNDERRUN;
  break;
 case 129:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 134:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_UNEXPECTED_PHASE\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 132:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_XFER_RDY_OVERRUN\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 133:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_XFER_RDY_NOT_EXPECTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 138:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_OFFSET_MISMATCH\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 131:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_XFER_ZERO_DATA_LEN\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 143:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_CMD_FRAME_ISSUED\n"));
  break;
 case 128:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_PIO_SETUP_ERROR\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 140:
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("IO_XFR_ERROR_INTERNAL_CRC_ERROR\n"));

  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 142:
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("IO_XFR_DMA_ACTIVATE_TIMEOUT\n"));

  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 default:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("Unknown status 0x%x\n", event));

  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 }
 spin_lock_irqsave(&t->task_state_lock, flags);
 t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
 t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
 t->task_state_flags |= SAS_TASK_STATE_DONE;
 if (unlikely((t->task_state_flags & SAS_TASK_STATE_ABORTED))) {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("task 0x%p done with io_status 0x%x"
   " resp 0x%x stat 0x%x but aborted by upper layer!\n",
   t, event, ts->resp, ts->stat));
  pm8001_ccb_task_free(pm8001_ha, t, ccb, tag);
 } else {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
 }
}
