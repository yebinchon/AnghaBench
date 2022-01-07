
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct beiscsi_hba {int interface_handle; } ;
struct be_dma_mem {struct be_cmd_set_dhcp_req* va; } ;
struct be_cmd_set_dhcp_req {int flags; int retry_count; int ip_type; int interface_hndl; } ;
struct TYPE_4__ {int ip_type; int * addr; } ;
struct be_cmd_get_if_info_resp {TYPE_2__ ip_addr; scalar_t__ dhcp_state; } ;
struct TYPE_3__ {int addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
typedef int gw_resp ;


 int BEISCSI_LOG_CONFIG ;
 int CMD_SUBSYSTEM_ISCSI ;
 int IP_ACTION_DEL ;
 int KERN_WARNING ;
 int OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR ;
 int beiscsi_exec_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,int *,int ) ;
 int beiscsi_if_clr_ip (struct beiscsi_hba*,struct be_cmd_get_if_info_resp*) ;
 int beiscsi_if_get_gw (struct beiscsi_hba*,int ,struct be_cmd_get_def_gateway_resp*) ;
 int beiscsi_if_get_info (struct beiscsi_hba*,int ,struct be_cmd_get_if_info_resp**) ;
 int beiscsi_if_mod_gw (struct beiscsi_hba*,int ,int ,int *) ;
 int beiscsi_if_zero_ip (int *,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int beiscsi_prep_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int ,int ,int) ;
 int kfree (struct be_cmd_get_if_info_resp*) ;
 int memset (struct be_cmd_get_def_gateway_resp*,int ,int) ;

int beiscsi_if_en_dhcp(struct beiscsi_hba *phba, u32 ip_type)
{
 struct be_cmd_get_def_gateway_resp gw_resp;
 struct be_cmd_get_if_info_resp *if_info;
 struct be_cmd_set_dhcp_req *dhcpreq;
 struct be_dma_mem nonemb_cmd;
 u8 *gw;
 int rc;

 rc = beiscsi_if_get_info(phba, ip_type, &if_info);
 if (rc)
  return rc;

 if (if_info->dhcp_state) {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
    "BG_%d : DHCP Already Enabled\n");
  goto exit;
 }


 if (!beiscsi_if_zero_ip(if_info->ip_addr.addr, ip_type)) {
  rc = beiscsi_if_clr_ip(phba, if_info);
  if (rc)
   goto exit;
 }


 memset(&gw_resp, 0, sizeof(gw_resp));

 rc = beiscsi_if_get_gw(phba, if_info->ip_addr.ip_type, &gw_resp);
 if (rc) {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to Get Gateway Addr\n");
  goto exit;
 }
 gw = (u8 *)&gw_resp.ip_addr.addr;
 if (!beiscsi_if_zero_ip(gw, if_info->ip_addr.ip_type)) {
  rc = beiscsi_if_mod_gw(phba, IP_ACTION_DEL,
           if_info->ip_addr.ip_type, gw);
  if (rc) {
   beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
        "BG_%d : Failed to clear Gateway Addr Set\n");
   goto exit;
  }
 }

 rc = beiscsi_prep_nemb_cmd(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR,
   sizeof(*dhcpreq));
 if (rc)
  goto exit;

 dhcpreq = nonemb_cmd.va;
 dhcpreq->flags = 1;
 dhcpreq->retry_count = 1;
 dhcpreq->interface_hndl = phba->interface_handle;
 dhcpreq->ip_type = ip_type;
 rc = beiscsi_exec_nemb_cmd(phba, &nonemb_cmd, ((void*)0), ((void*)0), 0);

exit:
 kfree(if_info);
 return rc;
}
