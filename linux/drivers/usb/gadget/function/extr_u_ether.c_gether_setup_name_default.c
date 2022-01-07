
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; int name; } ;
struct eth_dev {int host_mac; int dev_mac; int qmult; struct net_device* net; int rx_frames; int rx_reqs; int tx_reqs; int work; int req_lock; int lock; } ;


 int ENOMEM ;
 struct net_device* ERR_PTR (int ) ;
 int ETH_HLEN ;
 int GETHER_MAX_ETH_FRAME_LEN ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int QMULT_DEFAULT ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int eth_netdev_ops ;
 int eth_random_addr (int ) ;
 int eth_work ;
 int gadget_type ;
 struct eth_dev* netdev_priv (struct net_device*) ;
 int ops ;
 int pr_warn (char*,char*) ;
 int skb_queue_head_init (int *) ;
 int snprintf (int ,int,char*,char const*) ;
 int spin_lock_init (int *) ;

struct net_device *gether_setup_name_default(const char *netname)
{
 struct net_device *net;
 struct eth_dev *dev;

 net = alloc_etherdev(sizeof(*dev));
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
 dev->qmult = QMULT_DEFAULT;
 snprintf(net->name, sizeof(net->name), "%s%%d", netname);

 eth_random_addr(dev->dev_mac);
 pr_warn("using random %s ethernet address\n", "self");
 eth_random_addr(dev->host_mac);
 pr_warn("using random %s ethernet address\n", "host");

 net->netdev_ops = &eth_netdev_ops;

 net->ethtool_ops = &ops;
 SET_NETDEV_DEVTYPE(net, &gadget_type);


 net->min_mtu = ETH_HLEN;
 net->max_mtu = GETHER_MAX_ETH_FRAME_LEN;

 return net;
}
