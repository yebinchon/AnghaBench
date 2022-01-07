
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {struct be_cmd_set_def_gateway_req* va; } ;
struct TYPE_2__ {int addr; scalar_t__ ip_type; } ;
struct be_cmd_set_def_gateway_req {TYPE_1__ ip_addr; scalar_t__ action; } ;


 scalar_t__ BEISCSI_IP_TYPE_V6 ;
 int CMD_SUBSYSTEM_ISCSI ;
 int IP_V4_LEN ;
 int IP_V6_LEN ;
 int OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY ;
 int beiscsi_exec_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,int *,int ) ;
 int beiscsi_prep_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int ,int ,int) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int beiscsi_if_mod_gw(struct beiscsi_hba *phba,
        u32 action, u32 ip_type, u8 *gw)
{
 struct be_cmd_set_def_gateway_req *req;
 struct be_dma_mem nonemb_cmd;
 int rt_val;

 rt_val = beiscsi_prep_nemb_cmd(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY,
   sizeof(*req));
 if (rt_val)
  return rt_val;

 req = nonemb_cmd.va;
 req->action = action;
 req->ip_addr.ip_type = ip_type;
 memcpy(req->ip_addr.addr, gw,
        (ip_type < BEISCSI_IP_TYPE_V6) ? IP_V4_LEN : IP_V6_LEN);
 return beiscsi_exec_nemb_cmd(phba, &nonemb_cmd, ((void*)0), ((void*)0), 0);
}
