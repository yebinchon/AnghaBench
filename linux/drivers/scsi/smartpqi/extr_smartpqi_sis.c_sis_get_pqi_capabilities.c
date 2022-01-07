
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_sync_cmd_params {int * mailbox; } ;
struct pqi_ctrl_info {int config_table_length; int config_table_offset; int max_outstanding_requests; int max_transfer_size; int max_sg_entries; } ;
typedef int params ;


 int SIS_CMD_GET_PQI_CAPABILITIES ;
 int memset (struct sis_sync_cmd_params*,int ,int) ;
 int sis_send_sync_cmd (struct pqi_ctrl_info*,int ,struct sis_sync_cmd_params*) ;

int sis_get_pqi_capabilities(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 struct sis_sync_cmd_params params;

 memset(&params, 0, sizeof(params));

 rc = sis_send_sync_cmd(ctrl_info, SIS_CMD_GET_PQI_CAPABILITIES,
  &params);
 if (rc)
  return rc;

 ctrl_info->max_sg_entries = params.mailbox[1];
 ctrl_info->max_transfer_size = params.mailbox[2];
 ctrl_info->max_outstanding_requests = params.mailbox[3];
 ctrl_info->config_table_offset = params.mailbox[4];
 ctrl_info->config_table_length = params.mailbox[5];

 return 0;
}
