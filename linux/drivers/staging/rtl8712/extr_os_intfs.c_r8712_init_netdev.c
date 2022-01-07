
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct iw_handler_def* wireless_handlers; int watchdog_timeo; int * netdev_ops; } ;
struct iw_handler_def {int dummy; } ;
struct _adapter {scalar_t__ pid; struct net_device* pnetdev; } ;


 int HZ ;
 struct net_device* alloc_etherdev (int) ;
 scalar_t__ dev_alloc_name (struct net_device*,int ) ;
 int ifname ;
 int loadparam (struct _adapter*,struct net_device*) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int pr_info (char*) ;
 int r871x_handlers_def ;
 int rtl8712_netdev_ops ;
 int strcpy (int ,char*) ;

struct net_device *r8712_init_netdev(void)
{
 struct _adapter *padapter;
 struct net_device *pnetdev;

 pnetdev = alloc_etherdev(sizeof(struct _adapter));
 if (!pnetdev)
  return ((void*)0);
 if (dev_alloc_name(pnetdev, ifname) < 0) {
  strcpy(ifname, "wlan%d");
  dev_alloc_name(pnetdev, ifname);
 }
 padapter = netdev_priv(pnetdev);
 padapter->pnetdev = pnetdev;
 pr_info("r8712u: register rtl8712_netdev_ops to netdev_ops\n");
 pnetdev->netdev_ops = &rtl8712_netdev_ops;
 pnetdev->watchdog_timeo = HZ;
 pnetdev->wireless_handlers = (struct iw_handler_def *)
         &r871x_handlers_def;
 loadparam(padapter, pnetdev);
 netif_carrier_off(pnetdev);
 padapter->pid = 0;
 return pnetdev;
}
