
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int crypt_info; int * pHTInfo; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int kfree (int *) ;
 int lib80211_crypt_info_free (int *) ;
 scalar_t__ netdev_priv_rsl (struct net_device*) ;
 int rtllib_networks_free (struct rtllib_device*) ;
 int rtllib_softmac_free (struct rtllib_device*) ;

void free_rtllib(struct net_device *dev)
{
 struct rtllib_device *ieee = (struct rtllib_device *)
          netdev_priv_rsl(dev);

 kfree(ieee->pHTInfo);
 ieee->pHTInfo = ((void*)0);
 rtllib_softmac_free(ieee);

 lib80211_crypt_info_free(&ieee->crypt_info);

 rtllib_networks_free(ieee);
 free_netdev(dev);
}
