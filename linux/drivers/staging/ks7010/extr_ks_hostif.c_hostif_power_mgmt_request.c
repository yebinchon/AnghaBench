
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks_wlan_private {int dummy; } ;
struct hostif_power_mgmt_request {void* receive_dtims; void* wake_up; void* mode; } ;


 int HIF_POWER_MGMT_REQ ;
 void* cpu_to_le32 (int ) ;
 int hif_align_size (int) ;
 struct hostif_power_mgmt_request* hostif_generic_request (int,int ) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_power_mgmt_request*,int ) ;

__attribute__((used)) static
void hostif_power_mgmt_request(struct ks_wlan_private *priv,
          u32 mode, u32 wake_up, u32 receive_dtims)
{
 struct hostif_power_mgmt_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_POWER_MGMT_REQ);
 if (!pp)
  return;

 pp->mode = cpu_to_le32(mode);
 pp->wake_up = cpu_to_le32(wake_up);
 pp->receive_dtims = cpu_to_le32(receive_dtims);

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
}
