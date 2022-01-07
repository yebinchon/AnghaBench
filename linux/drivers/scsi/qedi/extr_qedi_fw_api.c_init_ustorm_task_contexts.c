
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_2__ {int reg1_map; } ;
struct ustorm_iscsi_task_st_ctx {TYPE_1__ reg1; void* exp_data_transfer_len; void* rem_rcv_len; } ;
struct e4_ustorm_iscsi_task_ag_ctx {int flags2; void* exp_data_acked; } ;


 int E4_USTORM_ISCSI_TASK_AG_CTX_DIF_ERROR_CF_EN ;
 int ISCSI_REG1_NUM_SGES ;
 int SET_FIELD (int ,int ,int) ;
 void* cpu_to_le32 (void*) ;

__attribute__((used)) static
void init_ustorm_task_contexts(struct ustorm_iscsi_task_st_ctx *ustorm_st_cxt,
   struct e4_ustorm_iscsi_task_ag_ctx *ustorm_ag_cxt,
   u32 remaining_recv_len, u32 expected_data_transfer_len,
   u8 num_sges, bool tx_dif_conn_err_en)
{
 u32 val;

 ustorm_st_cxt->rem_rcv_len = cpu_to_le32(remaining_recv_len);
 ustorm_ag_cxt->exp_data_acked = cpu_to_le32(expected_data_transfer_len);
 val = cpu_to_le32(expected_data_transfer_len);
 ustorm_st_cxt->exp_data_transfer_len = val;
 SET_FIELD(ustorm_st_cxt->reg1.reg1_map, ISCSI_REG1_NUM_SGES, num_sges);
 SET_FIELD(ustorm_ag_cxt->flags2,
    E4_USTORM_ISCSI_TASK_AG_CTX_DIF_ERROR_CF_EN,
    tx_dif_conn_err_en ? 1 : 0);
}
