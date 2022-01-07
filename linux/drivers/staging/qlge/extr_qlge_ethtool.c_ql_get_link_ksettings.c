
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ql_adapter {int link_status; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int duplex; int speed; int port; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SPEED_10000 ;
 int STS_LINK_TYPE_10GBASET ;
 int STS_LINK_TYPE_MASK ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ql_get_link_ksettings(struct net_device *ndev,
     struct ethtool_link_ksettings *ecmd)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 u32 supported, advertising;

 supported = SUPPORTED_10000baseT_Full;
 advertising = ADVERTISED_10000baseT_Full;

 if ((qdev->link_status & STS_LINK_TYPE_MASK) ==
    STS_LINK_TYPE_10GBASET) {
  supported |= (SUPPORTED_TP | SUPPORTED_Autoneg);
  advertising |= (ADVERTISED_TP | ADVERTISED_Autoneg);
  ecmd->base.port = PORT_TP;
  ecmd->base.autoneg = AUTONEG_ENABLE;
 } else {
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  ecmd->base.port = PORT_FIBRE;
 }

 ecmd->base.speed = SPEED_10000;
 ecmd->base.duplex = DUPLEX_FULL;

 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.advertising,
      advertising);

 return 0;
}
