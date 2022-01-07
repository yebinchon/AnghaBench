
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_type; } ;
struct qeth_card {TYPE_1__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct TYPE_4__ {void* speed; void* duplex; void* port; void* eth_tp_mdix_ctrl; void* eth_tp_mdix; scalar_t__ mdio_support; scalar_t__ phy_address; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct carrier_info {int card_type; int port_mode; int port_speed; } ;
typedef enum qeth_link_types { ____Placeholder_qeth_link_types } qeth_link_types ;


 int AUTONEG_ENABLE ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int EOPNOTSUPP ;
 void* ETH_TP_MDI_INVALID ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 void* PORT_FIBRE ;
 void* PORT_TP ;






 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 void* SPEED_10000 ;
 void* SPEED_25000 ;
 int netdev_dbg (struct net_device*,char*,int,int,int) ;
 int qeth_query_card_info (struct qeth_card*,struct carrier_info*) ;
 int qeth_set_cmd_adv_sup (struct ethtool_link_ksettings*,void*,void*) ;

__attribute__((used)) static int qeth_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct qeth_card *card = netdev->ml_priv;
 enum qeth_link_types link_type;
 struct carrier_info carrier_info;
 int rc;

 if (IS_IQD(card) || IS_VM_NIC(card))
  link_type = 133;
 else
  link_type = card->info.link_type;

 cmd->base.duplex = DUPLEX_FULL;
 cmd->base.autoneg = AUTONEG_ENABLE;
 cmd->base.phy_address = 0;
 cmd->base.mdio_support = 0;
 cmd->base.eth_tp_mdix = ETH_TP_MDI_INVALID;
 cmd->base.eth_tp_mdix_ctrl = ETH_TP_MDI_INVALID;

 switch (link_type) {
 case 131:
 case 129:
  cmd->base.speed = SPEED_100;
  cmd->base.port = PORT_TP;
  break;
 case 130:
 case 128:
  cmd->base.speed = SPEED_1000;
  cmd->base.port = PORT_FIBRE;
  break;
 case 133:
  cmd->base.speed = SPEED_10000;
  cmd->base.port = PORT_FIBRE;
  break;
 case 132:
  cmd->base.speed = SPEED_25000;
  cmd->base.port = PORT_FIBRE;
  break;
 default:
  cmd->base.speed = SPEED_10;
  cmd->base.port = PORT_TP;
 }
 qeth_set_cmd_adv_sup(cmd, cmd->base.speed, cmd->base.port);




 rc = qeth_query_card_info(card, &carrier_info);
 if (rc == -EOPNOTSUPP)
  return 0;
 if (rc)
  return rc;


 netdev_dbg(netdev,
 "card info: card_type=0x%02x, port_mode=0x%04x, port_speed=0x%08x\n",
   carrier_info.card_type,
   carrier_info.port_mode,
   carrier_info.port_speed);



 switch (carrier_info.card_type) {
 case 137:
 case 136:
  cmd->base.port = PORT_TP;
  qeth_set_cmd_adv_sup(cmd, SPEED_1000, cmd->base.port);
  break;
 case 135:
 case 134:
  cmd->base.port = PORT_FIBRE;
  qeth_set_cmd_adv_sup(cmd, SPEED_1000, cmd->base.port);
  break;
 case 139:
 case 138:
  cmd->base.port = PORT_FIBRE;
  qeth_set_cmd_adv_sup(cmd, SPEED_10000, cmd->base.port);
  break;
 }

 switch (carrier_info.port_mode) {
 case 146:
  cmd->base.duplex = DUPLEX_FULL;
  break;
 case 145:
  cmd->base.duplex = DUPLEX_HALF;
  break;
 }

 switch (carrier_info.port_speed) {
 case 142:
  cmd->base.speed = SPEED_10;
  break;
 case 144:
  cmd->base.speed = SPEED_100;
  break;
 case 141:
  cmd->base.speed = SPEED_1000;
  break;
 case 143:
  cmd->base.speed = SPEED_10000;
  break;
 case 140:
  cmd->base.speed = SPEED_25000;
  break;
 }

 return 0;
}
