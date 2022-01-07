
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct _adapter {int bup; } ;


 int ether_addr_copy (int ,int ) ;
 struct _adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
{
 struct _adapter *padapter = netdev_priv(pnetdev);
 struct sockaddr *addr = p;

 if (!padapter->bup)
  ether_addr_copy(pnetdev->dev_addr, addr->sa_data);
 return 0;
}
