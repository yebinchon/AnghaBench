
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_dev {int priv_dev; int (* get_endian ) (int ) ;} ;
struct nic {struct phy_dev* phy_dev; } ;
struct net_device {int name; } ;
struct hci_packet {int len; } ;
struct TYPE_2__ {int sock; } ;


 int EINVAL ;
 int HCI_HEADER_SIZE ;
 int gdm_dev16_to_cpu (int ,int ) ;
 TYPE_1__ lte_event ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netlink_send (int ,int,int ,char*,int) ;
 int sscanf (int ,char*,int*) ;
 int stub1 (int ) ;

__attribute__((used)) static int gdm_lte_event_send(struct net_device *dev, char *buf, int len)
{
 struct phy_dev *phy_dev = ((struct nic *)netdev_priv(dev))->phy_dev;
 struct hci_packet *hci = (struct hci_packet *)buf;
 int length;
 int idx;
 int ret;

 ret = sscanf(dev->name, "lte%d", &idx);
 if (ret != 1)
  return -EINVAL;

 length = gdm_dev16_to_cpu(phy_dev->get_endian(phy_dev->priv_dev),
      hci->len) + HCI_HEADER_SIZE;
 return netlink_send(lte_event.sock, idx, 0, buf, length);
}
