
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct ks_wlan_private {int mac_address_valid; int eth_addr; } ;


 int EBUSY ;
 int SME_MACADDRESS_SET_REQUEST ;
 int ether_addr_copy (int ,int ) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int memcpy (int ,int ,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static
int ks_wlan_set_mac_address(struct net_device *dev, void *addr)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 struct sockaddr *mac_addr = (struct sockaddr *)addr;

 if (netif_running(dev))
  return -EBUSY;
 memcpy(dev->dev_addr, mac_addr->sa_data, dev->addr_len);
 ether_addr_copy(priv->eth_addr, mac_addr->sa_data);

 priv->mac_address_valid = 0;
 hostif_sme_enqueue(priv, SME_MACADDRESS_SET_REQUEST);
 netdev_info(dev, "ks_wlan:  MAC ADDRESS = %pM\n", priv->eth_addr);
 return 0;
}
