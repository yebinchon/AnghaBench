
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sdu {scalar_t__ data; int nic_type; int len; int cmd_evt; } ;
struct phy_dev {struct net_device** dev; int priv_dev; int (* get_endian ) (int ) ;} ;
struct net_device {int dummy; } ;
struct multi_sdu {int num_packet; int len; scalar_t__ data; } ;


 scalar_t__ HCI_HEADER_SIZE ;
 scalar_t__ LTE_RX_SDU ;
 int find_dev_index (scalar_t__) ;
 scalar_t__ gdm_dev16_to_cpu (int ,int ) ;
 scalar_t__ gdm_dev32_to_cpu (int ,int ) ;
 int gdm_lte_netif_rx (struct net_device*,char*,int,scalar_t__) ;
 int pr_err (char*,scalar_t__) ;
 int stub1 (int ) ;

__attribute__((used)) static void gdm_lte_multi_sdu_pkt(struct phy_dev *phy_dev, char *buf, int len)
{
 struct net_device *dev;
 struct multi_sdu *multi_sdu = (struct multi_sdu *)buf;
 struct sdu *sdu = ((void*)0);
 u8 endian = phy_dev->get_endian(phy_dev->priv_dev);
 u8 *data = (u8 *)multi_sdu->data;
 u16 i = 0;
 u16 num_packet;
 u16 hci_len;
 u16 cmd_evt;
 u32 nic_type;
 int index;

 hci_len = gdm_dev16_to_cpu(endian, multi_sdu->len);
 num_packet = gdm_dev16_to_cpu(endian, multi_sdu->num_packet);

 for (i = 0; i < num_packet; i++) {
  sdu = (struct sdu *)data;

  cmd_evt = gdm_dev16_to_cpu(endian, sdu->cmd_evt);
  hci_len = gdm_dev16_to_cpu(endian, sdu->len);
  nic_type = gdm_dev32_to_cpu(endian, sdu->nic_type);

  if (cmd_evt != LTE_RX_SDU) {
   pr_err("rx sdu wrong hci %04x\n", cmd_evt);
   return;
  }
  if (hci_len < 12) {
   pr_err("rx sdu invalid len %d\n", hci_len);
   return;
  }

  index = find_dev_index(nic_type);
  if (index < 0) {
   pr_err("rx sdu invalid nic_type :%x\n", nic_type);
   return;
  }
  dev = phy_dev->dev[index];
  gdm_lte_netif_rx(dev, (char *)sdu->data,
     (int)(hci_len - 12), nic_type);

  data += ((hci_len + 3) & 0xfffc) + HCI_HEADER_SIZE;
 }
}
