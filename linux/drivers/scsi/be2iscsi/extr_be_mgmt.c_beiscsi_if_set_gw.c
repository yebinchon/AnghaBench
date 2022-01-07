
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct beiscsi_hba {int dummy; } ;
struct TYPE_2__ {int * addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
typedef int gw_resp ;


 int BEISCSI_LOG_CONFIG ;
 int IP_ACTION_ADD ;
 int IP_ACTION_DEL ;
 int KERN_WARNING ;
 int beiscsi_if_get_gw (struct beiscsi_hba*,int ,struct be_cmd_get_def_gateway_resp*) ;
 int beiscsi_if_mod_gw (struct beiscsi_hba*,int ,int ,int *) ;
 int beiscsi_if_zero_ip (int *,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int memset (struct be_cmd_get_def_gateway_resp*,int ,int) ;

int beiscsi_if_set_gw(struct beiscsi_hba *phba, u32 ip_type, u8 *gw)
{
 struct be_cmd_get_def_gateway_resp gw_resp;
 int rt_val;

 memset(&gw_resp, 0, sizeof(gw_resp));
 rt_val = beiscsi_if_get_gw(phba, ip_type, &gw_resp);
 if (rt_val) {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to Get Gateway Addr\n");
  return rt_val;
 }

 if (!beiscsi_if_zero_ip(gw_resp.ip_addr.addr, ip_type)) {
  rt_val = beiscsi_if_mod_gw(phba, IP_ACTION_DEL, ip_type,
        gw_resp.ip_addr.addr);
  if (rt_val) {
   beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
        "BG_%d : Failed to clear Gateway Addr Set\n");
   return rt_val;
  }
 }

 rt_val = beiscsi_if_mod_gw(phba, IP_ACTION_ADD, ip_type, gw);
 if (rt_val)
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to Set Gateway Addr\n");

 return rt_val;
}
