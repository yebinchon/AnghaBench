
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct task_status_struct {size_t residual; int buf_valid_size; void* stat; void* resp; void* open_rej_reason; scalar_t__ buf; } ;
struct set_dev_bits_fis {int dummy; } ;
struct sata_completion_resp {size_t* sata_resp; int param; int tag; int status; } ;
struct TYPE_6__ {int use_ncq; int dma_xfer; } ;
struct sas_task {int task_state_flags; int task_state_lock; int uldd_task; TYPE_3__ ata_task; int data_dir; TYPE_2__* dev; struct task_status_struct task_status; int lldd_task; } ;
struct pm8001_hba_info {size_t* sas_addr; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int id; size_t attached_phy; int running_req; } ;
struct pm8001_ccb_info {struct pm8001_device* device; struct sas_task* task; } ;
struct pio_setup_fis {int dummy; } ;
struct dev_to_host_fis {int dummy; } ;
struct ata_task_resp {size_t frame_len; size_t* ending_fis; } ;
typedef int sata_addr_low ;
typedef int sata_addr_hi ;
struct TYPE_5__ {int sas_addr; TYPE_1__* parent; struct pm8001_device* lldd_dev; } ;
struct TYPE_4__ {int dev_type; } ;


 int DMA_FROM_DEVICE ;
 size_t IO_OVERFLOW ;
 int NCQ_ABORT_ALL_FLAG ;
 int NCQ_READ_LOG_FLAG ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 void* SAM_STAT_GOOD ;
 void* SAS_ABORTED_TASK ;
 int SAS_ADDR (int ) ;
 void* SAS_DATA_UNDERRUN ;
 void* SAS_DEV_NO_RESPONSE ;
 void* SAS_INTERRUPTED ;
 void* SAS_NAK_R_ERR ;
 void* SAS_OPEN_REJECT ;
 void* SAS_OPEN_TO ;
 void* SAS_OREJ_BAD_DEST ;
 void* SAS_OREJ_CONN_RATE ;
 void* SAS_OREJ_EPROTO ;
 void* SAS_OREJ_RSVD_CONT0 ;
 void* SAS_OREJ_RSVD_RETRY ;
 void* SAS_OREJ_UNKNOWN ;
 void* SAS_OREJ_WRONG_DEST ;
 void* SAS_PHY_DOWN ;
 void* SAS_PROTO_RESPONSE ;
 void* SAS_QUEUE_FULL ;
 int SAS_STATUS_BUF_SIZE ;
 int SAS_TASK_AT_INITIATOR ;
 void* SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int SAS_TASK_STATE_PENDING ;
 void* SAS_TASK_UNDELIVERED ;
 scalar_t__ dev_is_expander (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (size_t*,size_t*,size_t) ;
 int pm8001_ccb_task_free (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ;
 int pm8001_ccb_task_free_done (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ;
 int pm8001_handle_event (struct pm8001_hba_info*,struct pm8001_device*,int const) ;
 int pm8001_printk (char*,...) ;
 int pm8001_tag_free (struct pm8001_hba_info*,size_t) ;
 int pm80xx_send_abort_all (struct pm8001_hba_info*,struct pm8001_device*) ;
 int sas_free_task (struct sas_task*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
mpi_sata_completion(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct sas_task *t;
 struct pm8001_ccb_info *ccb;
 u32 param;
 u32 status;
 u32 tag;
 int i, j;
 u8 sata_addr_low[4];
 u32 temp_sata_addr_low, temp_sata_addr_hi;
 u8 sata_addr_hi[4];
 struct sata_completion_resp *psataPayload;
 struct task_status_struct *ts;
 struct ata_task_resp *resp ;
 u32 *sata_resp;
 struct pm8001_device *pm8001_dev;
 unsigned long flags;

 psataPayload = (struct sata_completion_resp *)(piomb + 4);
 status = le32_to_cpu(psataPayload->status);
 tag = le32_to_cpu(psataPayload->tag);

 if (!tag) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("tag null\n"));
  return;
 }
 ccb = &pm8001_ha->ccb_info[tag];
 param = le32_to_cpu(psataPayload->param);
 if (ccb) {
  t = ccb->task;
  pm8001_dev = ccb->device;
 } else {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("ccb null\n"));
  return;
 }

 if (t) {
  if (t->dev && (t->dev->lldd_dev))
   pm8001_dev = t->dev->lldd_dev;
 } else {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("task null\n"));
  return;
 }

 if ((pm8001_dev && !(pm8001_dev->id & NCQ_READ_LOG_FLAG))
  && unlikely(!t || !t->lldd_task || !t->dev)) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("task or dev null\n"));
  return;
 }

 ts = &t->task_status;
 if (!ts) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("ts null\n"));
  return;
 }

 if ((status != 138) && (status != IO_OVERFLOW) &&
  (status != 137)) {
  if (!((t->dev->parent) &&
   (dev_is_expander(t->dev->parent->dev_type)))) {
   for (i = 0 , j = 4; i <= 3 && j <= 7; i++ , j++)
    sata_addr_low[i] = pm8001_ha->sas_addr[j];
   for (i = 0 , j = 0; i <= 3 && j <= 3; i++ , j++)
    sata_addr_hi[i] = pm8001_ha->sas_addr[j];
   memcpy(&temp_sata_addr_low, sata_addr_low,
    sizeof(sata_addr_low));
   memcpy(&temp_sata_addr_hi, sata_addr_hi,
    sizeof(sata_addr_hi));
   temp_sata_addr_hi = (((temp_sata_addr_hi >> 24) & 0xff)
      |((temp_sata_addr_hi << 8) &
      0xff0000) |
      ((temp_sata_addr_hi >> 8)
      & 0xff00) |
      ((temp_sata_addr_hi << 24) &
      0xff000000));
   temp_sata_addr_low = ((((temp_sata_addr_low >> 24)
      & 0xff) |
      ((temp_sata_addr_low << 8)
      & 0xff0000) |
      ((temp_sata_addr_low >> 8)
      & 0xff00) |
      ((temp_sata_addr_low << 24)
      & 0xff000000)) +
      pm8001_dev->attached_phy +
      0x10);
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SAS Address of IO Failure Drive:"
    "%08x%08x", temp_sata_addr_hi,
     temp_sata_addr_low));

  } else {
   PM8001_FAIL_DBG(pm8001_ha,
    pm8001_printk("SAS Address of IO Failure Drive:"
    "%016llx", SAS_ADDR(t->dev->sas_addr)));
  }
 }
 switch (status) {
 case 138:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_SUCCESS\n"));
  if (param == 0) {
   ts->resp = SAS_TASK_COMPLETE;
   ts->stat = SAM_STAT_GOOD;

   if (pm8001_dev &&
    (pm8001_dev->id & NCQ_READ_LOG_FLAG)) {

    pm8001_dev->id |= NCQ_ABORT_ALL_FLAG;

    pm8001_dev->id = pm8001_dev->id & 0x7FFFFFFF;
    pm80xx_send_abort_all(pm8001_ha, pm8001_dev);

    pm8001_tag_free(pm8001_ha, tag);
    sas_free_task(t);
    return;
   }
  } else {
   u8 len;
   ts->resp = SAS_TASK_COMPLETE;
   ts->stat = SAS_PROTO_RESPONSE;
   ts->residual = param;
   PM8001_IO_DBG(pm8001_ha,
    pm8001_printk("SAS_PROTO_RESPONSE len = %d\n",
    param));
   sata_resp = &psataPayload->sata_resp[0];
   resp = (struct ata_task_resp *)ts->buf;
   if (t->ata_task.dma_xfer == 0 &&
       t->data_dir == DMA_FROM_DEVICE) {
    len = sizeof(struct pio_setup_fis);
    PM8001_IO_DBG(pm8001_ha,
    pm8001_printk("PIO read len = %d\n", len));
   } else if (t->ata_task.use_ncq) {
    len = sizeof(struct set_dev_bits_fis);
    PM8001_IO_DBG(pm8001_ha,
     pm8001_printk("FPDMA len = %d\n", len));
   } else {
    len = sizeof(struct dev_to_host_fis);
    PM8001_IO_DBG(pm8001_ha,
    pm8001_printk("other len = %d\n", len));
   }
   if (SAS_STATUS_BUF_SIZE >= sizeof(*resp)) {
    resp->frame_len = len;
    memcpy(&resp->ending_fis[0], sata_resp, len);
    ts->buf_valid_size = sizeof(*resp);
   } else
    PM8001_IO_DBG(pm8001_ha,
     pm8001_printk("response to large\n"));
  }
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 157:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_ABORTED IOMB Tag\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_ABORTED_TASK;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;

 case 137:

  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_UNDERFLOW param = %d\n", param));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DATA_UNDERRUN;
  ts->residual = param;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 153:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_NO_DEVICE\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_PHY_DOWN;
  break;
 case 135:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_INTERRUPTED;
  break;
 case 132:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_PHY_NOT_READY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 143:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_EPROTO;
  break;
 case 140:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_ZONE_VIOLATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_UNKNOWN;
  break;
 case 151:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_CONT0;
  break;
 case 148:
 case 129:
 case 145:
 case 147:
 case 146:
 case 144:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  if (!t->uldd_task) {
   pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    148);
   ts->resp = SAS_TASK_UNDELIVERED;
   ts->stat = SAS_QUEUE_FULL;
   pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
   return;
  }
  break;
 case 152:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_BAD_DEST;
  if (!t->uldd_task) {
   pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    148);
   ts->resp = SAS_TASK_UNDELIVERED;
   ts->stat = SAS_QUEUE_FULL;
   pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
   return;
  }
  break;
 case 150:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_CONN_RATE;
  break;
 case 142:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk(
   "IO_OPEN_CNX_ERROR_STP_RESOURCES_BUSY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  if (!t->uldd_task) {
   pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    142);
   ts->resp = SAS_TASK_UNDELIVERED;
   ts->stat = SAS_QUEUE_FULL;
   pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
   return;
  }
  break;
 case 141:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
  break;
 case 133:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_NAK_RECEIVED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_NAK_R_ERR;
  break;
 case 136:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_ACK_NAK_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_NAK_R_ERR;
  break;
 case 134:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_DMA\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_ABORTED_TASK;
  break;
 case 130:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_SATA_LINK_TIMEOUT\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_DEV_NO_RESPONSE;
  break;
 case 131:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_REJECTED_NCQ_MODE\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DATA_UNDERRUN;
  break;
 case 128:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_TO;
  break;
 case 139:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_PORT_IN_RESET\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  break;
 case 154:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_NON_OPERATIONAL\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  if (!t->uldd_task) {
   pm8001_handle_event(pm8001_ha, pm8001_dev,
     154);
   ts->resp = SAS_TASK_UNDELIVERED;
   ts->stat = SAS_QUEUE_FULL;
   pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
   return;
  }
  break;
 case 155:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_IN_RECOVERY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  break;
 case 156:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_IN_ERROR\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
  if (!t->uldd_task) {
   pm8001_handle_event(pm8001_ha, pm8001_dev,
     156);
   ts->resp = SAS_TASK_UNDELIVERED;
   ts->stat = SAS_QUEUE_FULL;
   pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
   return;
  }
  break;
 case 149:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 default:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("Unknown status 0x%x\n", status));

  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DEV_NO_RESPONSE;
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
   t, status, ts->resp, ts->stat));
  pm8001_ccb_task_free(pm8001_ha, t, ccb, tag);
 } else {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  pm8001_ccb_task_free_done(pm8001_ha, t, ccb, tag);
 }
}
