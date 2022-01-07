
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sdu {int nic_type; } ;
struct phy_dev {struct net_device** dev; int priv_dev; int (* get_endian ) (int ) ;} ;
struct net_device {int dummy; } ;
struct hci_pdn_table_ind {int nic_type; } ;
struct hci_packet {scalar_t__ data; int cmd_evt; } ;
struct hci_connect_ind {int connect; } ;






 int find_dev_index (int ) ;
 int gdm_dev16_to_cpu (int ,int ) ;
 int gdm_dev32_to_cpu (int ,int ) ;
 int gdm_lte_event_send (struct net_device*,char*,int) ;
 int gdm_lte_multi_sdu_pkt (struct phy_dev*,char*,int) ;
 int gdm_lte_netif_rx (struct net_device*,scalar_t__,int,int ) ;
 int gdm_lte_pdn_table (struct net_device*,char*,int) ;
 int netdev_info (struct net_device*,char*,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static int gdm_lte_receive_pkt(struct phy_dev *phy_dev, char *buf, int len)
{
 struct hci_packet *hci = (struct hci_packet *)buf;
 struct hci_pdn_table_ind *pdn_table = (struct hci_pdn_table_ind *)buf;
 struct sdu *sdu;
 struct net_device *dev;
 u8 endian = phy_dev->get_endian(phy_dev->priv_dev);
 int ret = 0;
 u16 cmd_evt;
 u32 nic_type;
 int index;

 if (!len)
  return ret;

 cmd_evt = gdm_dev16_to_cpu(endian, hci->cmd_evt);

 dev = phy_dev->dev[0];
 if (!dev)
  return 0;

 switch (cmd_evt) {
 case 128:
  sdu = (struct sdu *)hci->data;
  nic_type = gdm_dev32_to_cpu(endian, sdu->nic_type);
  index = find_dev_index(nic_type);
  if (index < 0)
   return index;
  dev = phy_dev->dev[index];
  gdm_lte_netif_rx(dev, hci->data, len, nic_type);
  break;
 case 129:
  gdm_lte_multi_sdu_pkt(phy_dev, buf, len);
  break;
 case 131:
  netdev_info(dev, "link %s\n",
       ((struct hci_connect_ind *)buf)->connect
       ? "on" : "off");
  break;
 case 130:
  pdn_table = (struct hci_pdn_table_ind *)buf;
  nic_type = gdm_dev32_to_cpu(endian, pdn_table->nic_type);
  index = find_dev_index(nic_type);
  if (index < 0)
   return index;
  dev = phy_dev->dev[index];
  gdm_lte_pdn_table(dev, buf, len);

 default:
  ret = gdm_lte_event_send(dev, buf, len);
  break;
 }

 return ret;
}
