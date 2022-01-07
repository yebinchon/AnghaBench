
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_netdev_priv_indicator {int priv; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct rtw_netdev_priv_indicator* netdev_priv (struct net_device*) ;
 int vfree (int ) ;

void rtw_free_netdev(struct net_device *netdev)
{
 struct rtw_netdev_priv_indicator *pnpi;

 if (!netdev)
  goto RETURN;

 pnpi = netdev_priv(netdev);

 if (!pnpi->priv)
  goto RETURN;

 vfree(pnpi->priv);
 free_netdev(netdev);

RETURN:
 return;
}
