
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phy_info_timer; } ;
struct ks_wlan_private {TYPE_1__ reg; } ;
struct hostif_phy_information_request {void* time; void* type; } ;


 int HIF_PHY_INFO_REQ ;
 scalar_t__ NORMAL_TYPE ;
 scalar_t__ TIME_TYPE ;
 void* cpu_to_le16 (scalar_t__) ;
 int hif_align_size (int) ;
 struct hostif_phy_information_request* hostif_generic_request (int,int ) ;
 int send_request_to_device (struct ks_wlan_private*,struct hostif_phy_information_request*,int ) ;

__attribute__((used)) static
void hostif_phy_information_request(struct ks_wlan_private *priv)
{
 struct hostif_phy_information_request *pp;

 pp = hostif_generic_request(sizeof(*pp), HIF_PHY_INFO_REQ);
 if (!pp)
  return;

 if (priv->reg.phy_info_timer) {
  pp->type = cpu_to_le16(TIME_TYPE);
  pp->time = cpu_to_le16(priv->reg.phy_info_timer);
 } else {
  pp->type = cpu_to_le16(NORMAL_TYPE);
  pp->time = cpu_to_le16(0);
 }

 send_request_to_device(priv, pp, hif_align_size(sizeof(*pp)));
}
