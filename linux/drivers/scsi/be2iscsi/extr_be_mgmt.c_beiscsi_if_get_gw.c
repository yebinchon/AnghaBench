
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {struct be_cmd_get_def_gateway_req* va; } ;
struct be_cmd_get_def_gateway_resp {int dummy; } ;
struct be_cmd_get_def_gateway_req {int ip_type; } ;


 int CMD_SUBSYSTEM_ISCSI ;
 int OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY ;
 int beiscsi_exec_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,struct be_cmd_get_def_gateway_resp*,int) ;
 int beiscsi_prep_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int ,int ,int) ;

int beiscsi_if_get_gw(struct beiscsi_hba *phba, u32 ip_type,
        struct be_cmd_get_def_gateway_resp *resp)
{
 struct be_cmd_get_def_gateway_req *req;
 struct be_dma_mem nonemb_cmd;
 int rc;

 rc = beiscsi_prep_nemb_cmd(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY,
   sizeof(*resp));
 if (rc)
  return rc;

 req = nonemb_cmd.va;
 req->ip_type = ip_type;

 return beiscsi_exec_nemb_cmd(phba, &nonemb_cmd, ((void*)0),
         resp, sizeof(*resp));
}
