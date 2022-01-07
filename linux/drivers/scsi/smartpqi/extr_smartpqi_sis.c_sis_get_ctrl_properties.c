
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis_sync_cmd_params {int* mailbox; } ;
struct pqi_ctrl_info {int pqi_reset_quiesce_supported; } ;
typedef int params ;


 int ENODEV ;
 int SIS_CMD_GET_ADAPTER_PROPERTIES ;
 int SIS_EXTENDED_PROPERTIES_SUPPORTED ;
 int SIS_PQI_RESET_QUIESCE_SUPPORTED ;
 int SIS_REQUIRED_EXTENDED_PROPERTIES ;
 int memset (struct sis_sync_cmd_params*,int ,int) ;
 int sis_send_sync_cmd (struct pqi_ctrl_info*,int ,struct sis_sync_cmd_params*) ;

int sis_get_ctrl_properties(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 u32 properties;
 u32 extended_properties;
 struct sis_sync_cmd_params params;

 memset(&params, 0, sizeof(params));

 rc = sis_send_sync_cmd(ctrl_info, SIS_CMD_GET_ADAPTER_PROPERTIES,
  &params);
 if (rc)
  return rc;

 properties = params.mailbox[1];

 if (!(properties & SIS_EXTENDED_PROPERTIES_SUPPORTED))
  return -ENODEV;

 extended_properties = params.mailbox[4];

 if ((extended_properties & SIS_REQUIRED_EXTENDED_PROPERTIES) !=
  SIS_REQUIRED_EXTENDED_PROPERTIES)
  return -ENODEV;

 if (extended_properties & SIS_PQI_RESET_QUIESCE_SUPPORTED)
  ctrl_info->pqi_reset_quiesce_supported = 1;

 return 0;
}
