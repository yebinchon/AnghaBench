
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_netdev_priv_indicator {int sizeof_priv; int priv; } ;
struct net_device {int dummy; } ;


 struct net_device* alloc_etherdev_mq (int,int) ;
 int free_netdev (struct net_device*) ;
 struct rtw_netdev_priv_indicator* netdev_priv (struct net_device*) ;
 int vzalloc (int) ;

struct net_device *rtw_alloc_etherdev(int sizeof_priv)
{
 struct net_device *pnetdev;
 struct rtw_netdev_priv_indicator *pnpi;

 pnetdev = alloc_etherdev_mq(sizeof(struct rtw_netdev_priv_indicator), 4);
 if (!pnetdev)
  goto RETURN;

 pnpi = netdev_priv(pnetdev);

 pnpi->priv = vzalloc(sizeof_priv);
 if (!pnpi->priv) {
  free_netdev(pnetdev);
  pnetdev = ((void*)0);
  goto RETURN;
 }

 pnpi->sizeof_priv = sizeof_priv;
RETURN:
 return pnetdev;
}
