
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {int dummy; } ;
struct be_cmd_get_nic_conf_resp {int dummy; } ;


 int CMD_SUBSYSTEM_ISCSI ;
 int OPCODE_COMMON_ISCSI_NTWK_GET_NIC_CONFIG ;
 int beiscsi_exec_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,struct be_cmd_get_nic_conf_resp*,int) ;
 int beiscsi_prep_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int ,int ,int) ;

int mgmt_get_nic_conf(struct beiscsi_hba *phba,
        struct be_cmd_get_nic_conf_resp *nic)
{
 struct be_dma_mem nonemb_cmd;
 int rc;

 rc = beiscsi_prep_nemb_cmd(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_NTWK_GET_NIC_CONFIG,
   sizeof(*nic));
 if (rc)
  return rc;

 return beiscsi_exec_nemb_cmd(phba, &nonemb_cmd, ((void*)0),
         nic, sizeof(*nic));
}
