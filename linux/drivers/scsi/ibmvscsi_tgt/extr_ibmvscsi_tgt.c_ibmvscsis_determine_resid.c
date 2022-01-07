
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct srp_rsp {void* data_in_res_cnt; int flags; void* data_out_res_cnt; } ;
struct se_cmd {int se_cmd_flags; scalar_t__ data_direction; int residual_count; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int SCF_OVERFLOW_BIT ;
 int SCF_UNDERFLOW_BIT ;
 int SRP_RSP_FLAG_DIOVER ;
 int SRP_RSP_FLAG_DIUNDER ;
 int SRP_RSP_FLAG_DOOVER ;
 int SRP_RSP_FLAG_DOUNDER ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void ibmvscsis_determine_resid(struct se_cmd *se_cmd,
          struct srp_rsp *rsp)
{
 u32 residual_count = se_cmd->residual_count;

 if (!residual_count)
  return;

 if (se_cmd->se_cmd_flags & SCF_UNDERFLOW_BIT) {
  if (se_cmd->data_direction == DMA_TO_DEVICE) {

   rsp->flags = SRP_RSP_FLAG_DOUNDER;
   rsp->data_out_res_cnt = cpu_to_be32(residual_count);
  } else if (se_cmd->data_direction == DMA_FROM_DEVICE) {

   rsp->flags = SRP_RSP_FLAG_DIUNDER;
   rsp->data_in_res_cnt = cpu_to_be32(residual_count);
  }
 } else if (se_cmd->se_cmd_flags & SCF_OVERFLOW_BIT) {
  if (se_cmd->data_direction == DMA_TO_DEVICE) {

   rsp->flags = SRP_RSP_FLAG_DOOVER;
   rsp->data_out_res_cnt = cpu_to_be32(residual_count);
  } else if (se_cmd->data_direction == DMA_FROM_DEVICE) {

   rsp->flags = SRP_RSP_FLAG_DIOVER;
   rsp->data_in_res_cnt = cpu_to_be32(residual_count);
  }
 }
}
