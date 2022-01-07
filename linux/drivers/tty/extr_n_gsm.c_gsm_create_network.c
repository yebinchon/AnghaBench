
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int min_mtu; int ifindex; int name; int max_mtu; int mtu; } ;
struct gsm_netconfig {scalar_t__ protocol; int adaption; char* if_name; } ;
struct gsm_mux_net {int ref; struct gsm_dlci* dlci; } ;
struct gsm_dlci {int adaption; int prev_adaption; struct net_device* net; int data; int prev_data; TYPE_1__* gsm; } ;
struct TYPE_2__ {int mtu; } ;


 int CAP_NET_ADMIN ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 int EPROTONOSUPPORT ;
 int ETH_P_IP ;
 int IFNAMSIZ ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int capable (int ) ;
 int dlci_net_free (struct gsm_dlci*) ;
 int gsm_mux_net_init ;
 int gsm_mux_rx_netchar ;
 scalar_t__ htons (int ) ;
 int kref_init (int *) ;
 struct gsm_mux_net* netdev_priv (struct net_device*) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int register_netdev (struct net_device*) ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static int gsm_create_network(struct gsm_dlci *dlci, struct gsm_netconfig *nc)
{
 char *netname;
 int retval = 0;
 struct net_device *net;
 struct gsm_mux_net *mux_net;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;


 if (dlci->adaption > 2)
  return -EBUSY;

 if (nc->protocol != htons(ETH_P_IP))
  return -EPROTONOSUPPORT;

 if (nc->adaption != 3 && nc->adaption != 4)
  return -EPROTONOSUPPORT;

 pr_debug("create network interface");

 netname = "gsm%d";
 if (nc->if_name[0] != '\0')
  netname = nc->if_name;
 net = alloc_netdev(sizeof(struct gsm_mux_net), netname,
      NET_NAME_UNKNOWN, gsm_mux_net_init);
 if (!net) {
  pr_err("alloc_netdev failed");
  return -ENOMEM;
 }
 net->mtu = dlci->gsm->mtu;
 net->min_mtu = 8;
 net->max_mtu = dlci->gsm->mtu;
 mux_net = netdev_priv(net);
 mux_net->dlci = dlci;
 kref_init(&mux_net->ref);
 strncpy(nc->if_name, net->name, IFNAMSIZ);


 dlci->prev_adaption = dlci->adaption;
 dlci->prev_data = dlci->data;
 dlci->adaption = nc->adaption;
 dlci->data = gsm_mux_rx_netchar;
 dlci->net = net;

 pr_debug("register netdev");
 retval = register_netdev(net);
 if (retval) {
  pr_err("network register fail %d\n", retval);
  dlci_net_free(dlci);
  return retval;
 }
 return net->ifindex;
}
