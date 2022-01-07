
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {unsigned char* sa_data; } ;
struct TYPE_2__ {int use_4addr; int iftype; } ;
struct qtnf_vif {TYPE_1__ wdev; int mac; } ;
struct net_device {unsigned char* dev_addr; } ;
typedef int old_addr ;


 int ETH_ALEN ;
 int eth_mac_addr (struct net_device*,struct sockaddr*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int qtnf_cmd_send_change_intf_type (struct qtnf_vif*,int ,int ,unsigned char*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 int qtnf_scan_done (int ,int) ;

__attribute__((used)) static int qtnf_netdev_set_mac_address(struct net_device *ndev, void *addr)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
 struct sockaddr *sa = addr;
 int ret;
 unsigned char old_addr[ETH_ALEN];

 memcpy(old_addr, sa->sa_data, sizeof(old_addr));

 ret = eth_mac_addr(ndev, sa);
 if (ret)
  return ret;

 qtnf_scan_done(vif->mac, 1);

 ret = qtnf_cmd_send_change_intf_type(vif, vif->wdev.iftype,
          vif->wdev.use_4addr,
          sa->sa_data);

 if (ret)
  memcpy(ndev->dev_addr, old_addr, ETH_ALEN);

 return ret;
}
