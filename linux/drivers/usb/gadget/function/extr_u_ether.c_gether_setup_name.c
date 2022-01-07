
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_gadget {int dev; } ;
struct net_device {int dev_addr; int max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; int name; } ;
struct eth_dev {unsigned int qmult; int host_mac; struct usb_gadget* gadget; struct net_device* net; int rx_frames; int rx_reqs; int tx_reqs; int work; int req_lock; int lock; } ;


 int ENOMEM ;
 struct eth_dev* ERR_PTR (int) ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int GETHER_MAX_ETH_FRAME_LEN ;
 int INFO (struct eth_dev*,char*,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*,char*) ;
 int eth_netdev_ops ;
 int eth_work ;
 int free_netdev (struct net_device*) ;
 int gadget_type ;
 scalar_t__ get_ether_addr (char const*,int ) ;
 int memcpy (int *,int ,int ) ;
 struct eth_dev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int ops ;
 int register_netdev (struct net_device*) ;
 int skb_queue_head_init (int *) ;
 int snprintf (int ,int,char*,char const*) ;
 int spin_lock_init (int *) ;

struct eth_dev *gether_setup_name(struct usb_gadget *g,
  const char *dev_addr, const char *host_addr,
  u8 ethaddr[ETH_ALEN], unsigned qmult, const char *netname)
{
 struct eth_dev *dev;
 struct net_device *net;
 int status;

 net = alloc_etherdev(sizeof *dev);
 if (!net)
  return ERR_PTR(-ENOMEM);

 dev = netdev_priv(net);
 spin_lock_init(&dev->lock);
 spin_lock_init(&dev->req_lock);
 INIT_WORK(&dev->work, eth_work);
 INIT_LIST_HEAD(&dev->tx_reqs);
 INIT_LIST_HEAD(&dev->rx_reqs);

 skb_queue_head_init(&dev->rx_frames);


 dev->net = net;
 dev->qmult = qmult;
 snprintf(net->name, sizeof(net->name), "%s%%d", netname);

 if (get_ether_addr(dev_addr, net->dev_addr))
  dev_warn(&g->dev,
   "using random %s ethernet address\n", "self");
 if (get_ether_addr(host_addr, dev->host_mac))
  dev_warn(&g->dev,
   "using random %s ethernet address\n", "host");

 if (ethaddr)
  memcpy(ethaddr, dev->host_mac, ETH_ALEN);

 net->netdev_ops = &eth_netdev_ops;

 net->ethtool_ops = &ops;


 net->min_mtu = ETH_HLEN;
 net->max_mtu = GETHER_MAX_ETH_FRAME_LEN;

 dev->gadget = g;
 SET_NETDEV_DEV(net, &g->dev);
 SET_NETDEV_DEVTYPE(net, &gadget_type);

 status = register_netdev(net);
 if (status < 0) {
  dev_dbg(&g->dev, "register_netdev failed, %d\n", status);
  free_netdev(net);
  dev = ERR_PTR(status);
 } else {
  INFO(dev, "MAC %pM\n", net->dev_addr);
  INFO(dev, "HOST MAC %pM\n", dev->host_mac);






  netif_carrier_off(net);
 }

 return dev;
}
