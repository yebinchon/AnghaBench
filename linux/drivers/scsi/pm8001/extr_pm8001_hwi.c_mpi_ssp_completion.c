
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct task_status_struct {size_t residual; void* stat; void* resp; void* open_rej_reason; } ;
struct ssp_response_iu {int status; } ;
struct ssp_completion_resp {struct ssp_response_iu ssp_resp_iu; int param; int tag; int status; } ;
struct sas_task {int task_state_flags; int (* task_done ) (struct sas_task*) ;int task_state_lock; int uldd_task; TYPE_1__* dev; struct task_status_struct task_status; int lldd_task; } ;
struct pm8001_hba_info {int dev; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {int running_req; } ;
struct pm8001_ccb_info {struct sas_task* task; struct pm8001_device* device; scalar_t__ open_retry; } ;
struct TYPE_2__ {int sas_addr; } ;
 size_t IO_OVERFLOW ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_IO_DBG (struct pm8001_hba_info*,int ) ;
 void* SAM_STAT_GOOD ;
 void* SAS_ABORTED_TASK ;
 int SAS_ADDR (int ) ;
 void* SAS_DATA_UNDERRUN ;
 void* SAS_NAK_R_ERR ;
 void* SAS_OPEN_REJECT ;
 void* SAS_OREJ_BAD_DEST ;
 void* SAS_OREJ_CONN_RATE ;
 void* SAS_OREJ_EPROTO ;
 void* SAS_OREJ_RSVD_RETRY ;
 void* SAS_OREJ_UNKNOWN ;
 void* SAS_OREJ_WRONG_DEST ;
 void* SAS_PHY_DOWN ;
 void* SAS_PROTO_RESPONSE ;
 int SAS_TASK_AT_INITIATOR ;
 void* SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int SAS_TASK_STATE_PENDING ;
 void* SAS_TASK_UNDELIVERED ;
 size_t le32_to_cpu (int ) ;
 int mb () ;
 int pm8001_ccb_task_free (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,size_t) ;
 int pm8001_handle_event (struct pm8001_hba_info*,struct pm8001_device*,int const) ;
 int pm8001_printk (char*,...) ;
 int sas_ssp_task_response (int ,struct sas_task*,struct ssp_response_iu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sas_task*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
mpi_ssp_completion(struct pm8001_hba_info *pm8001_ha , void *piomb)
{
 struct sas_task *t;
 struct pm8001_ccb_info *ccb;
 unsigned long flags;
 u32 status;
 u32 param;
 u32 tag;
 struct ssp_completion_resp *psspPayload;
 struct task_status_struct *ts;
 struct ssp_response_iu *iu;
 struct pm8001_device *pm8001_dev;
 psspPayload = (struct ssp_completion_resp *)(piomb + 4);
 status = le32_to_cpu(psspPayload->status);
 tag = le32_to_cpu(psspPayload->tag);
 ccb = &pm8001_ha->ccb_info[tag];
 if ((status == 151) && ccb->open_retry) {

  ccb->open_retry = 0;
  return;
 }
 pm8001_dev = ccb->device;
 param = le32_to_cpu(psspPayload->param);

 t = ccb->task;

 if (status && status != 135)
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("sas IO status 0x%x\n", status));
 if (unlikely(!t || !t->lldd_task || !t->dev))
  return;
 ts = &t->task_status;

 if ((status != 137) && (status != IO_OVERFLOW) &&
  (status != 135))
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("SAS Address of IO Failure Drive:"
   "%016llx", SAS_ADDR(t->dev->sas_addr)));

 switch (status) {
 case 137:
  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_SUCCESS"
   ",param = %d\n", param));
  if (param == 0) {
   ts->resp = SAS_TASK_COMPLETE;
   ts->stat = SAM_STAT_GOOD;
  } else {
   ts->resp = SAS_TASK_COMPLETE;
   ts->stat = SAS_PROTO_RESPONSE;
   ts->residual = param;
   iu = &psspPayload->ssp_resp_iu;
   sas_ssp_task_response(pm8001_ha->dev, t, iu);
  }
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 151:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_ABORTED IOMB Tag\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_ABORTED_TASK;
  break;
 case 135:

  PM8001_IO_DBG(pm8001_ha, pm8001_printk("IO_UNDERFLOW"
   ",param = %d\n", param));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_DATA_UNDERRUN;
  ts->residual = param;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  break;
 case 148:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_NO_DEVICE\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_PHY_DOWN;
  break;
 case 133:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;

  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 129:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_PHY_NOT_READY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 142:
  PM8001_IO_DBG(pm8001_ha,
  pm8001_printk("IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\n"));
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
 case 146:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BREAK\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 143:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_UNKNOWN;
  if (!t->uldd_task)
   pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    143);
  break;
 case 147:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_BAD_DESTINATION\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_BAD_DEST;
  break;
 case 145:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_CONNECTION_RATE_"
   "NOT_SUPPORTED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_CONN_RATE;
  break;
 case 141:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_OPEN_CNX_ERROR_WRONG_DESTINATION\n"));
  ts->resp = SAS_TASK_UNDELIVERED;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
  break;
 case 131:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_NAK_RECEIVED\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 134:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_ACK_NAK_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_NAK_R_ERR;
  break;
 case 132:
  PM8001_IO_DBG(pm8001_ha,
  pm8001_printk("IO_XFER_ERROR_DMA\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  break;
 case 128:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_OPEN_RETRY_TIMEOUT\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  break;
 case 130:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_XFER_ERROR_OFFSET_MISMATCH\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  break;
 case 139:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_PORT_IN_RESET\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  break;
 case 149:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_NON_OPERATIONAL\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  if (!t->uldd_task)
   pm8001_handle_event(pm8001_ha,
    pm8001_dev,
    149);
  break;
 case 150:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_DS_IN_RECOVERY\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  break;
 case 136:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_TM_TAG_NOT_FOUND\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  break;
 case 138:
  PM8001_IO_DBG(pm8001_ha,
   pm8001_printk("IO_SSP_EXT_IU_ZERO_LEN_ERROR\n"));
  ts->resp = SAS_TASK_COMPLETE;
  ts->stat = SAS_OPEN_REJECT;
  break;
 case 144:
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
  ts->stat = SAS_OPEN_REJECT;
  break;
 }
 PM8001_IO_DBG(pm8001_ha,
  pm8001_printk("scsi_status = %x\n ",
  psspPayload->ssp_resp_iu.status));
 spin_lock_irqsave(&t->task_state_lock, flags);
 t->task_state_flags &= ~SAS_TASK_STATE_PENDING;
 t->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
 t->task_state_flags |= SAS_TASK_STATE_DONE;
 if (unlikely((t->task_state_flags & SAS_TASK_STATE_ABORTED))) {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  PM8001_FAIL_DBG(pm8001_ha, pm8001_printk("task 0x%p done with"
   " io_status 0x%x resp 0x%x "
   "stat 0x%x but aborted by upper layer!\n",
   t, status, ts->resp, ts->stat));
  pm8001_ccb_task_free(pm8001_ha, t, ccb, tag);
 } else {
  spin_unlock_irqrestore(&t->task_state_lock, flags);
  pm8001_ccb_task_free(pm8001_ha, t, ccb, tag);
  mb();
  t->task_done(t);
 }
}
