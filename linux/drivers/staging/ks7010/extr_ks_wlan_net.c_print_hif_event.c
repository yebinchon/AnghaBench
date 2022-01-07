
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static void print_hif_event(struct net_device *dev, int event)
{
 switch (event) {
 case 154:
  netdev_info(dev, "HIF_DATA_REQ\n");
  break;
 case 155:
  netdev_info(dev, "HIF_DATA_IND\n");
  break;
 case 148:
  netdev_info(dev, "HIF_MIB_GET_REQ\n");
  break;
 case 149:
  netdev_info(dev, "HIF_MIB_GET_CONF\n");
  break;
 case 146:
  netdev_info(dev, "HIF_MIB_SET_REQ\n");
  break;
 case 147:
  netdev_info(dev, "HIF_MIB_SET_CONF\n");
  break;
 case 139:
  netdev_info(dev, "HIF_POWER_MGMT_REQ\n");
  break;
 case 140:
  netdev_info(dev, "HIF_POWER_MGMT_CONF\n");
  break;
 case 130:
  netdev_info(dev, "HIF_START_REQ\n");
  break;
 case 131:
  netdev_info(dev, "HIF_START_CONF\n");
  break;
 case 156:
  netdev_info(dev, "HIF_CONNECT_IND\n");
  break;
 case 128:
  netdev_info(dev, "HIF_STOP_REQ\n");
  break;
 case 129:
  netdev_info(dev, "HIF_STOP_CONF\n");
  break;
 case 137:
  netdev_info(dev, "HIF_PS_ADH_SET_REQ\n");
  break;
 case 138:
  netdev_info(dev, "HIF_PS_ADH_SET_CONF\n");
  break;
 case 150:
  netdev_info(dev, "HIF_INFRA_SET_REQ\n");
  break;
 case 151:
  netdev_info(dev, "HIF_INFRA_SET_CONF\n");
  break;
 case 160:
  netdev_info(dev, "HIF_ADH_SET_REQ\n");
  break;
 case 161:
  netdev_info(dev, "HIF_ADH_SET_CONF\n");
  break;
 case 158:
  netdev_info(dev, "HIF_AP_SET_REQ\n");
  break;
 case 159:
  netdev_info(dev, "HIF_AP_SET_CONF\n");
  break;
 case 157:
  netdev_info(dev, "HIF_ASSOC_INFO_IND\n");
  break;
 case 144:
  netdev_info(dev, "HIF_MIC_FAILURE_REQ\n");
  break;
 case 145:
  netdev_info(dev, "HIF_MIC_FAILURE_CONF\n");
  break;
 case 134:
  netdev_info(dev, "HIF_SCAN_REQ\n");
  break;
 case 136:
  netdev_info(dev, "HIF_SCAN_CONF\n");
  break;
 case 141:
  netdev_info(dev, "HIF_PHY_INFO_REQ\n");
  break;
 case 143:
  netdev_info(dev, "HIF_PHY_INFO_CONF\n");
  break;
 case 132:
  netdev_info(dev, "HIF_SLEEP_REQ\n");
  break;
 case 133:
  netdev_info(dev, "HIF_SLEEP_CONF\n");
  break;
 case 142:
  netdev_info(dev, "HIF_PHY_INFO_IND\n");
  break;
 case 135:
  netdev_info(dev, "HIF_SCAN_IND\n");
  break;
 case 152:
  netdev_info(dev, "HIF_INFRA_SET2_REQ\n");
  break;
 case 153:
  netdev_info(dev, "HIF_INFRA_SET2_CONF\n");
  break;
 case 162:
  netdev_info(dev, "HIF_ADH_SET2_REQ\n");
  break;
 case 163:
  netdev_info(dev, "HIF_ADH_SET2_CONF\n");
 }
}
