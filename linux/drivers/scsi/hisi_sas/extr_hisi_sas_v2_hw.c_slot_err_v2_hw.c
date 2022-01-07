
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct task_status_struct {void* stat; void* residual; void* open_rej_reason; int resp; } ;
struct sas_task {int task_proto; struct task_status_struct task_status; } ;
struct hisi_sas_slot {int abort; } ;
struct hisi_sas_err_record_v2 {int dma_rx_err_type; int sipc_rx_err_type; int dma_tx_err_type; int trans_rx_fail_type; int trans_tx_fail_type; } ;
struct hisi_hba {int dummy; } ;
 void* SAM_STAT_CHECK_CONDITION ;
 void* SAS_DATA_OVERRUN ;
 void* SAS_DATA_UNDERRUN ;
 void* SAS_DEV_NO_RESPONSE ;
 void* SAS_OPEN_REJECT ;
 void* SAS_OREJ_BAD_DEST ;
 void* SAS_OREJ_CONN_RATE ;
 void* SAS_OREJ_EPROTO ;
 void* SAS_OREJ_NO_DEST ;
 void* SAS_OREJ_UNKNOWN ;
 void* SAS_OREJ_WRONG_DEST ;
 void* SAS_PHY_DOWN ;




 void* SAS_PROTO_RESPONSE ;
 void* SAS_QUEUE_FULL ;
 int SAS_TASK_UNDELIVERED ;
 int hisi_sas_sata_done (struct sas_task*,struct hisi_sas_slot*) ;
 struct hisi_sas_err_record_v2* hisi_sas_status_buf_addr_mem (struct hisi_sas_slot*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int parse_dma_rx_err_code_v2_hw (void*) ;
 int parse_dma_tx_err_code_v2_hw (int ) ;
 int parse_sipc_rx_err_code_v2_hw (int ) ;
 int parse_trans_rx_err_code_v2_hw (void*) ;
 int parse_trans_tx_err_code_v2_hw (void*) ;

__attribute__((used)) static void slot_err_v2_hw(struct hisi_hba *hisi_hba,
      struct sas_task *task,
      struct hisi_sas_slot *slot,
      int err_phase)
{
 struct task_status_struct *ts = &task->task_status;
 struct hisi_sas_err_record_v2 *err_record =
   hisi_sas_status_buf_addr_mem(slot);
 u32 trans_tx_fail_type = le32_to_cpu(err_record->trans_tx_fail_type);
 u32 trans_rx_fail_type = le32_to_cpu(err_record->trans_rx_fail_type);
 u16 dma_tx_err_type = le16_to_cpu(err_record->dma_tx_err_type);
 u16 sipc_rx_err_type = le16_to_cpu(err_record->sipc_rx_err_type);
 u32 dma_rx_err_type = le32_to_cpu(err_record->dma_rx_err_type);
 int error = -1;

 if (err_phase == 1) {

  error = parse_dma_tx_err_code_v2_hw(dma_tx_err_type);
  if (error == -1)
   error = parse_trans_tx_err_code_v2_hw(
     trans_tx_fail_type);
 } else if (err_phase == 2) {

  error = parse_trans_rx_err_code_v2_hw(trans_rx_fail_type);
  if (error == -1) {
   error = parse_dma_rx_err_code_v2_hw(
     dma_rx_err_type);
   if (error == -1)
    error = parse_sipc_rx_err_code_v2_hw(
      sipc_rx_err_type);
  }
 }

 switch (task->task_proto) {
 case 188:
 {
  switch (error) {
  case 136:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_NO_DEST;
   break;
  }
  case 133:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_EPROTO;
   break;
  }
  case 138:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_CONN_RATE;
   break;
  }
  case 141:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_BAD_DEST;
   break;
  }
  case 131:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
   break;
  }
  case 198:
  case 130:
  case 200:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_UNKNOWN;
   break;
  }
  case 137:
  {

   ts->stat = SAS_DEV_NO_RESPONSE;
   break;
  }
  case 214:
  {
   ts->stat = SAS_DATA_OVERRUN;
   ts->residual = 0;
   break;
  }
  case 213:
  {
   ts->residual = trans_tx_fail_type;
   ts->stat = SAS_DATA_UNDERRUN;
   break;
  }
  case 129:
  case 157:
  case 139:
  case 142:
  case 140:
  case 134:
  case 135:
  case 128:
  case 153:
  case 154:
  case 155:
  case 148:
  case 150:
  case 149:
  case 151:
  case 152:
  case 145:
  case 156:
  case 147:
  case 146:
  case 163:
  case 167:
  case 162:
  case 168:
  case 174:
  case 175:
  case 176:
  case 171:
  case 172:
  case 173:
  case 158:
  case 170:
  case 169:
  case 177:
  case 159:
  case 160:
  case 178:
  case 195:
  case 193:
  case 194:
  case 192:
  case 191:
  case 186:
  case 211:
  case 212:
  case 207:
  case 205:
  case 206:
  case 199:
  case 196:
  {

   ts->stat = SAS_QUEUE_FULL;
   slot->abort = 1;
   break;
  }
  default:
   break;
  }
 }
  break;
 case 189:
  ts->stat = SAM_STAT_CHECK_CONDITION;
  break;

 case 190:
 case 187:
 case 190 | 187:
 {
  switch (error) {
  case 136:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_NO_DEST;
   break;
  }
  case 137:
  {
   ts->resp = SAS_TASK_UNDELIVERED;
   ts->stat = SAS_DEV_NO_RESPONSE;
   break;
  }
  case 133:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_EPROTO;
   break;
  }
  case 138:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_CONN_RATE;
   break;
  }
  case 141:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_CONN_RATE;
   break;
  }
  case 131:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_WRONG_DEST;
   break;
  }
  case 200:
  case 198:
  case 130:
  {
   ts->stat = SAS_OPEN_REJECT;
   ts->open_rej_reason = SAS_OREJ_UNKNOWN;
   break;
  }
  case 214:
  {
   ts->stat = SAS_DATA_OVERRUN;
   ts->residual = 0;
   break;
  }
  case 213:
  {
   ts->residual = trans_tx_fail_type;
   ts->stat = SAS_DATA_UNDERRUN;
   break;
  }
  case 129:
  case 157:
  case 139:
  case 142:
  case 140:
  case 134:
  case 135:
  case 128:
  case 153:
  case 154:
  case 155:
  case 148:
  case 150:
  case 149:
  case 151:
  case 152:
  case 156:
  case 147:
  case 144:
  case 143:
  case 162:
  case 167:
  case 165:
  case 166:
  case 161:
  case 164:
  case 168:
  case 174:
  case 175:
  case 176:
  case 171:
  case 170:
  case 172:
  case 173:
  case 169:
  case 177:
  case 159:
  case 178:
  case 195:
  case 193:
  case 194:
  case 192:
  case 191:
  case 184:
  case 183:
  case 185:
  case 180:
  case 179:
  case 181:
  case 182:
  case 211:
  case 212:
  case 199:
  case 197:
  case 210:
  case 201:
  case 202:
  case 203:
  case 207:
  case 205:
  case 206:
  case 204:
  case 209:
  case 208:
  case 196:
  case 160:
  case 132:
  {
   slot->abort = 1;
   ts->stat = SAS_PHY_DOWN;
   break;
  }
  default:
  {
   ts->stat = SAS_PROTO_RESPONSE;
   break;
  }
  }
  hisi_sas_sata_done(task, slot);
 }
  break;
 default:
  break;
 }
}
