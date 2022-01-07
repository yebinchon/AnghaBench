
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct scsi_sgl_task_params {int num_sges; int small_mid_sge; } ;
struct TYPE_3__ {int sge_len; } ;
struct scsi_initiator_cmd_params {TYPE_1__ extended_cdb_sge; } ;
struct scsi_dif_task_params {int dummy; } ;
struct iscsi_task_params {int tx_io_size; TYPE_2__* sqe; int itid; } ;
struct iscsi_common_hdr {int itt; int hdr_first_byte; int hdr_second_dword; } ;
typedef enum iscsi_task_type { ____Placeholder_iscsi_task_type } iscsi_task_type ;
struct TYPE_4__ {int flags; int contlen_cdbsize; int prot_flags; int task_id; } ;


 int GET_FIELD (int ,int ) ;
 int ISCSI_CMD_HDR_TOTAL_AHS_LEN ;
 int ISCSI_COMMON_HDR_OPCODE ;
 int ISCSI_OPCODE_NOP_IN ;
 int ISCSI_OPCODE_TEXT_RESPONSE ;




 int ISCSI_TTT_ALL_ONES ;
 int ISCSI_WQE_CDB_SIZE ;
 int ISCSI_WQE_CONT_LEN ;
 int ISCSI_WQE_NUM_SGES ;
 int ISCSI_WQE_NUM_SGES_SLOWIO ;
 int ISCSI_WQE_RESPONSE ;
 int ISCSI_WQE_TYPE_LOGIN ;
 int ISCSI_WQE_TYPE_MIDDLE_PATH ;
 int ISCSI_WQE_TYPE_NORMAL ;
 int ISCSI_WQE_TYPE_TASK_CLEANUP ;
 int ISCSI_WQE_WQE_TYPE ;
 int SCSI_NUM_SGES_SLOW_SGL_THR ;
 int SET_FIELD (int ,int ,int) ;
 int calc_rw_task_size (struct iscsi_task_params*,int,struct scsi_sgl_task_params*,struct scsi_dif_task_params*) ;
 int cpu_to_le16 (int ) ;
 int init_dif_context_flags (int *,struct scsi_dif_task_params*) ;
 int memset (TYPE_2__*,int ,int) ;
 int min (int ,int ) ;
 int scsi_is_slow_sgl (int ,int ) ;

__attribute__((used)) static void init_sqe(struct iscsi_task_params *task_params,
       struct scsi_sgl_task_params *sgl_task_params,
       struct scsi_dif_task_params *dif_task_params,
       struct iscsi_common_hdr *pdu_header,
       struct scsi_initiator_cmd_params *cmd_params,
       enum iscsi_task_type task_type,
       bool is_cleanup)
{
 if (!task_params->sqe)
  return;

 memset(task_params->sqe, 0, sizeof(*task_params->sqe));
 task_params->sqe->task_id = cpu_to_le16(task_params->itid);
 if (is_cleanup) {
  SET_FIELD(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
     ISCSI_WQE_TYPE_TASK_CLEANUP);
  return;
 }

 switch (task_type) {
 case 130:
 {
  u32 buf_size = 0;
  u32 num_sges = 0;

  init_dif_context_flags(&task_params->sqe->prot_flags,
           dif_task_params);

  SET_FIELD(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
     ISCSI_WQE_TYPE_NORMAL);

  if (task_params->tx_io_size) {
   buf_size = calc_rw_task_size(task_params, task_type,
           sgl_task_params,
           dif_task_params);

   if (scsi_is_slow_sgl(sgl_task_params->num_sges,
          sgl_task_params->small_mid_sge))
    num_sges = ISCSI_WQE_NUM_SGES_SLOWIO;
   else
    num_sges = min(sgl_task_params->num_sges,
            (u16)SCSI_NUM_SGES_SLOW_SGL_THR);
  }

  SET_FIELD(task_params->sqe->flags, ISCSI_WQE_NUM_SGES,
     num_sges);
  SET_FIELD(task_params->sqe->contlen_cdbsize, ISCSI_WQE_CONT_LEN,
     buf_size);

  if (GET_FIELD(pdu_header->hdr_second_dword,
         ISCSI_CMD_HDR_TOTAL_AHS_LEN))
   SET_FIELD(task_params->sqe->contlen_cdbsize,
      ISCSI_WQE_CDB_SIZE,
      cmd_params->extended_cdb_sge.sge_len);
 }
  break;
 case 131:
  SET_FIELD(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
     ISCSI_WQE_TYPE_NORMAL);

  if (GET_FIELD(pdu_header->hdr_second_dword,
         ISCSI_CMD_HDR_TOTAL_AHS_LEN))
   SET_FIELD(task_params->sqe->contlen_cdbsize,
      ISCSI_WQE_CDB_SIZE,
      cmd_params->extended_cdb_sge.sge_len);
  break;
 case 129:
 case 128:
 {
  bool advance_statsn = 1;

  if (task_type == 129)
   SET_FIELD(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
      ISCSI_WQE_TYPE_LOGIN);
  else
   SET_FIELD(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
      ISCSI_WQE_TYPE_MIDDLE_PATH);

  if (task_type == 128) {
   u8 opcode = GET_FIELD(pdu_header->hdr_first_byte,
           ISCSI_COMMON_HDR_OPCODE);

   if (opcode != ISCSI_OPCODE_TEXT_RESPONSE &&
       (opcode != ISCSI_OPCODE_NOP_IN ||
       pdu_header->itt == ISCSI_TTT_ALL_ONES))
    advance_statsn = 0;
  }

  SET_FIELD(task_params->sqe->flags, ISCSI_WQE_RESPONSE,
     advance_statsn ? 1 : 0);

  if (task_params->tx_io_size) {
   SET_FIELD(task_params->sqe->contlen_cdbsize,
      ISCSI_WQE_CONT_LEN, task_params->tx_io_size);

  if (scsi_is_slow_sgl(sgl_task_params->num_sges,
         sgl_task_params->small_mid_sge))
   SET_FIELD(task_params->sqe->flags, ISCSI_WQE_NUM_SGES,
      ISCSI_WQE_NUM_SGES_SLOWIO);
  else
   SET_FIELD(task_params->sqe->flags, ISCSI_WQE_NUM_SGES,
      min(sgl_task_params->num_sges,
          (u16)SCSI_NUM_SGES_SLOW_SGL_THR));
  }
 }
  break;
 default:
  break;
 }
}
